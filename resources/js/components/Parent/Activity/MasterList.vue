<template>
    <div class="row">
        <div class="col-sm-12" v-if="!current">
            <!-- <h2 style="color:#fff; text-align:center;">Select Activity</h2> -->
            <b-button variant="success" size="small" class="col-sm-12 com-md-4 col-lg-2" @click="stopCreatingAppointment">Cancel</b-button>
            <p style="color:#fff;">Select an Establishment</p>
            <div class="row">
                <div class="col-xl-3 col-lg-4 col-md-6 mt-1 mb-1 activity-card"  v-for="a in establishments" :key="a.id" @click.prevent="current=a">
                    <div :class="'card bg-dark text-' + (!a.color ? 'white' : a.color)">
                        <img class="card-img" :src="'img/' +a.img" alt="Card image">
                        <div class="card-img-overlay">
                            <h5 class="card-title">{{a.name}}</h5>
                            <p class="card-text">{{a.partner}}</p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="col-sm-12" v-if="current">
            <b-jumbotron :header="current.name" :lead="current.partner">
                <b-button variant="primary" size="sm" @click.prevent="current=null">Back</b-button><br/>
                <b-img class="mt-2" :src="'img/'+current.img" fluid alt="Img"></b-img>
                <p>Select Activity from this Establishment</p>
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
        </div>
    </div>
</template>

<script>
import axios from 'axios';
export default {
    data(){
        return {
            establishments : [], current: null
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
                alert("No need to register for this activity");
                return;
            }
            this.$store.commit("setActivity",activity)
        },
        stopCreatingAppointment(){
            this.$store.commit("setCreatingAppointment",false)
        }
    }
}
</script>

<style scoped>
.activity-card{
    max-height: 140px !important;
    overflow: hidden;
    border:none !important;
    cursor: pointer;
}
.activity-card:hover{
    border:5px solid #fff;
}
</style>
