<template>
    <div class="container mt-5">
        <Signin v-show="false" />
        <Kids v-show="false" />
        <Profile v-show="false" />
        <Activities v-show="false" />
        <ActivityDetails />
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
    background: #5E9CAB;
    color:#fff;
    cursor: pointer;
}
</style>
