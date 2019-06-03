<template>
    <div class="row">
        <div class="col-sm-12">
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
                        {{activity.start}}
                </b-list-group>
            </b-card>
        </div>
    </div>
</template>

<script>
export default {
    data(){
        return {
            // activity : {
            //     name : "Acting Academy",
            //     img : "imagefull-1793.png",
            //     job : "Performing: Streetmosphere",
            //     role : "Street Performer",
            //     duration : 45,
            //     age: "4+",
            //     kidzos: "+10",
            //     capacity: 16,
            //     taken: 6,
            //     floor: "Ground"
            // }
            activityID:1,
            activity: null
        }
    },
    mounted(){
      this.fetchActivity();  
    },
    methods : {
        fetchActivity(){
            this.$http.get("/activity/"+this.activityID)
            .then(r=>{
                this.activity = r.data;
            })
        }
    }
}
</script>
