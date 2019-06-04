<template>
    <div class="row">
        <div class="col-sm-12" v-if="!current">
            <b-list-group>
                <b-list-group-item v-for="a in establishments" :key="a.id" @click.prevent="current=a" class="list-item">{{a.name}}</b-list-group-item>
            </b-list-group>
        </div>
        <div class="col-sm-12" v-if="current">
            <b-jumbotron :header="current.name" lead="Select Activity from this Establishment">
                <b-button variant="primary" size="sm" @click.prevent="current=null; currentActivity=null;">Back</b-button><br/>
                <div class="table-responsive">
                    <table class="table table-bordered table-hover table-striped table-condensed" style="font-size:12px; background-color:#fff;">
                        <thead class="thead-dark">
                            <th colspan="5" class="text-center">Available activity from this establishment</th>
                        </thead>
                        <thead>
                            <th>Role</th>
                            <th>Kidzos</th>
                            <th>Duration<br/>(In Minutes)</th>
                            <th>Capacity</th>
                            <th>Minimum Age</th>
                        </thead>
                        <tbody>
                            <tr v-for="a in current.activities" :key="a.id" class="list-item" @click="selectActivity(a)">
                                <td><span>{{a.job}}<br/></span>{{a.role}}</td>
                                <td>{{a.kidzos}}</td>
                                <td>{{a.duration}}</td>
                                <td>{{a.capacity}}</td>
                                <td>{{a.min_age}}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </b-jumbotron>
            <time-slots v-if="currentActivity" :stateActivity="currentActivity"></time-slots>
        </div>
    </div>
</template>

<script>
import TimeSlots from './TimeSlots'

export default {
    components : {TimeSlots},
    data(){
        return {
            establishments : [], current: null, currentActivity: null
        }
    },
    mounted(){
        this.loadEstablishments();
    },
    methods : {
        loadEstablishments(){
            this.$http.get("/establishments")
            .then(r=>{
                this.establishments = r.data;
            });
        },
        selectActivity(activity){
            if(activity.duration.toUpperCase() == "FREE"){
                alert("No registration needed");
                return;
            }
            this.currentActivity = activity
        }
    }
}
</script>

<style scoped>
.activity-card{
    width:100%;
    cursor: pointer;
}
body{
    background: none !important;
}
</style>
