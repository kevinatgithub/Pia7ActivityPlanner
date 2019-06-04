<template>
    <div class="row">
        <div class="col-sm-12">
            <b-card bg-variant="light" :header="activity.establishment.name" v-if="activity">
                
                <table class="table table-bordered table-striped table-condensed">
                    <thead class="thead-dark">
                        <tr>
                            <th>Time Slot</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <div role="tablist">
                                    <b-card no-body class="mb-1" v-for="(ts,i) in activity.timeslots" :key="ts.timeslot">
                                        <b-card-header header-tag="header" class="p-1" role="tab">
                                            <b-button block href="#" @click="toggleView(i)" variant="light">{{ts.timeslot}} to {{ts.end}}</b-button>
                                        </b-card-header>
                                        <b-collapse :id="'accordion-' + i" visible accordion="my-accordion" role="tabpanel">
                                            <b-card-body>
                                                <b-card-text v-for="a in ts.appointments" :key="a.id">{{a.guest.name}}</b-card-text>
                                            </b-card-body>
                                        </b-collapse>
                                    </b-card>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                    
                </table>
            </b-card>
        </div>
    </div>
</template>

<script>
export default {
    props : ['stateActivity'],
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
            this.$http.get("/reportactivity/"+this.stateActivity.id)
            .then(r=>{
                this.activity = r.data;
            })
        },
        toggleView(i){
            this.$root.$emit('bv::toggle::collapse', 'accordion-'+i)
        }
    }
}
</script>
