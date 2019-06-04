<template>
    <div class="row">
        <div class="mt-5 col-sm-12">
            <b-card class="text-center" :title="guest.name">
                <b-card-text>
                    Below are the selected activities for Mark Joseph Pantaleon.<br/>
                    <b-list-group>
                        <b-list-group-item
                            v-for="a in appointments" 
                            :key="a.id"
                            class="list-item" 
                            @click="appointmentSelected(a)" v-b-modal.modal-1>{{a.activity.job}} @ {{a.start}} to {{a.end}}</b-list-group-item>
                    </b-list-group>
                    <b-button variant="success" class="mt-2 col-sm-12" @click.prevent="createAppointment">Click to add another activity</b-button>
                    <b-button variant="light" class="mt-2 col-sm-12" @click.prevent="resetGuest">Select another Companion</b-button>
                </b-card-text>
            </b-card>
            <b-modal id="modal-1" title="Cancel Booking">
                <p class="my-4" v-if="appointment">Cancel booking for {{appointment.activity.job}} @ {{appointment.start}} to {{appointment.end}}!</p>
            </b-modal>
        </div>
    </div>
</template>

<script>
import {mapState} from 'vuex';
export default {
    data(){
        return {
            appointment: null
        }
    },
    mounted(){
        this.loadAppointments();
    },
    methods : {
        appointmentSelected(appointment){
            this.appointment = appointment
        },
        createAppointment(){
            this.$store.commit("setCreatingAppointment",true)
        },
        loadAppointments(){
            let {guest} = this
            this.$http.get('/appointments/'+guest.guest_id)
            .then(r=>{
                this.$store.commit('setAppointments',r.data)
            })
        },
        resetGuest(){
            this.$store.commit('setGuest',null)
        }
    },
    computed : mapState(['guest','appointments'])
}
</script>
