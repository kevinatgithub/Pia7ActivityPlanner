<template>
    <div class="container mt-5">
        <!-- <Signin v-show="true" /> -->
        <!-- <Kids v-show="true" /> -->
        <!-- <Profile v-show="true" /> -->
        <Activities v-show="true" />
        <!-- <ActivityDetails /> -->
    </div>
</template>

<script>
import Signin from './Signin/Form'
import Kids from './Kids/List'
import Profile from './Kids/Profile'
import Activities from './Activity/MasterList'
import ActivityDetails from './Activity/Details'

export default {
    components : { Signin, Kids, Profile, Activities, ActivityDetails }
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
