<template>
    <div class="container mt-5">
        <Signin v-show="!guestGroup" />
        <div v-if="guestGroup">
            <Kids v-if="!guest" />
            <Profile v-if="guest && !creatingAppointment" />
            <div v-show="creatingAppointment">
                <Activities v-if="!activity" />
                <!-- <ActivityDetails v-show="activity" /> -->
                <TimeSlotPicker v-if="activity" />
            </div>
        </div>
    </div>
</template>

<script>
import Signin from './Signin/Form'
import Kids from './Kids/List'
import Profile from './Kids/Profile'
import Activities from './Activity/MasterList'
import ActivityDetails from './Activity/Details'
import TimeSlotPicker from './Activity/TimeSlotPicker'

import {mapState} from 'vuex'

export default {
    components : { Signin, Kids, Profile, Activities, ActivityDetails, TimeSlotPicker },
    computed : mapState([
        'guestGroup', 'guest', 'creatingAppointment', 'activity'
    ])
}
</script>
<style>
body {
    background-color: #5E9CAB;
}
.list-item:hover{
    background: #F689B2;
    color:#fff;
    cursor: pointer;
}
</style>
