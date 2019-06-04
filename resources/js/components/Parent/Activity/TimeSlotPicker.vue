<template>
    <div class="row">
        <div class="col-sm-12">
            <b-button variant="success" class="col-sm-12" size="small" @click="clearActivity">Select Different Role</b-button>
            <b-card bg-variant="light" :header="activity.establishment.name" v-if="activity">
                <b-list-group>
                    <b-list-group-item>{{activity.job}} 
                        <span class="float-right">{{activity.duration}} mins</span>
                        <br/>
                        {{activity.role}}
                        </b-list-group-item>
                </b-list-group>
                <b-img :src="'img/'+activity.establishment.img" fluid alt="Img"></b-img>
                <b-list-group>
                    <b-list-group-item>
                        {{activity.min_age}} years old 
                        <span class="float-right">{{activity.kidzos}} KidZos</span>
                        </b-list-group-item>
                </b-list-group>

                <table class="table table-bordered table-striped table-condensed">
                    <thead class="thead-dark">
                        <tr>
                            <th>Time Slot</th><th>Remaining Slots</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="ts in activity.timeslots" :key="ts.timeslot">
                            <td>{{ts.timeslot}}</td><td>{{activity.capacity - ts.appointments.length}} Slots remaining
                                <b-button 
                                :disabled="activity.capacity - ts.appointments.length == 0" 
                                class="float-right" pill variant="info" size="sm" v-b-modal.modal-1 @click="timeslot=ts">Register Me!</b-button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </b-card>
            <b-modal id="modal-1" title="Register to this Timeslot" @ok="handleOk">
                <p class="my-4" v-if="timeslot">Register me on this timeslot {{timeslot.timeslot}} to {{timeslot.end}}?</p>
            </b-modal>
        </div>
    </div>
</template>

<script>
export default {
    data(){
        return {
            activity: null, timeslot : null
        }
    },
    mounted(){
      this.fetchActivity();  
    },
    methods : {
        fetchActivity(){
            this.$http.get("/activity/"+this.stateActivity.id)
            .then(r=>{
                this.activity = r.data;
            })
        },
        clearActivity(){
            this.$store.commit("setActivity",null)
        },
        handleOk(){
            this.$http.post("/addAppointment",{
                activity : this.activity.id,
                guest : this.guest.guest_id,
                start : this.timeslot.start,
                end : this.timeslot.end
            })
            .then(r => {
                this.$store.commit('setActivity',null)
            })
        }
    },
    computed : {
        stateActivity(){
            return this.$store.state.activity
        },
        guest(){
            return this.$store.state.guest
        }
    }
}
</script>
