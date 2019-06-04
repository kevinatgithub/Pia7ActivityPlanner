<template>
    <div class="row">
        <div class="mt-5 col-sm-12">
            <div>
                <b-card class="text-center" title="Your Companion">
                    <b-card-text>
                        Click a name from your listed companion to select their activities on KidZania
                    </b-card-text>

                    <b-list-group>
                        <b-list-group-item  v-for="guest in guestGroup" :key="guest.id" class="list-item" @click="companionSelected(guest)">{{guest.name}}</b-list-group-item>
                    </b-list-group>

                    <b-card-text>
                        Is your companion name not listed? <b-link href="http://pia7th.bobongmd.com/pia/">Click here</b-link><br/>
                        <b-link @click.prevent="clearGuestGroup">Go Back</b-link>
                    </b-card-text>
                </b-card>
            </div>
        </div>
    </div>
</template>

<script>
import {mapState} from 'vuex'

export default {
    methods : {
        companionSelected(guest){
            this.$store.commit('setGuest',guest)
        },
        clearGuestGroup(){
            this.$store.commit('setGuestGroup',null);
        }
    },
    computed : mapState(['guestGroup'])
}
</script>

