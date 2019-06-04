<template>
    <div>
        <router-view></router-view>
    </div>
</template>

<script>
import Main from './Parent/Main'
import Admin from './Admin/Dashboard'

const routes = [
    { path : "/" , component : Main },
    { path : "/admin" , component : Admin },
    
]

import VuewRouter from 'vue-router'

const router = new VuewRouter({
    routes
})

export default {
    router
}
</script>
