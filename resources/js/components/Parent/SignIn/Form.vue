<template>
    <div class="row">
        <div class="col-sm-12">
            <b-card no-body class="overflow-hidden" >
                <b-row no-gutters>
                    <b-col md="6">
                        <b-card-img src="img/logo.jpg" class="rounded-0"></b-card-img>
                    </b-col>
                    <b-col md="6">
                        <b-card-body title="Invitation Code">
                        <b-card-text>
                            Plan your kids activities on KidZania ahead,<br/>
                            Please enter your invitation code below.
                            <b-form @submit.prevent="onSubmit" class="mt-2">
                                <b-form-group
                                    id="input-group-1"
                                    label-for="input-1"
                                >
                                    <b-form-input
                                    id="input-1"
                                    type="text"
                                    required
                                    placeholder="Invitation Code Here!"
                                    :state="validation"
                                    v-model="localCode"
                                    autocomplete="off"
                                    ></b-form-input>
                                     <b-form-invalid-feedback :state="validation">
                                        The Invitation code you provided is invalid.
                                    </b-form-invalid-feedback>
                                </b-form-group>
                                <b-button type="submit" variant="primary" class="col-sm-12">Check</b-button>
                            </b-form>
                        </b-card-text>
                        </b-card-body>
                    </b-col>
                </b-row>
            </b-card>
        </div>
    </div>
</template>

<script>
export default {
    data(){
        return  {
            localCode : null,
            validation: null
        }
    },
    methods : {
        onSubmit(){
            this.$http.get("/guests/"+this.localCode)
            .then(r=>{
                if(r.data.length == 0){
                    this.validation = false;
                }else{
                    this.validation = true;
                    this.$store.commit("setGuestGroup",r.data);
                    // console.log(this.$store)
                }
            })
        }
    },
    computed : {
        guestGroup(){
            return this.$store.state.guestGroup
        }
    },
    watch : {
        guestGroup(){
            if(this.guestGroup == null){
                this.localCode = null
                this.validation = null
            }
        }
    }
}
</script>


<style scoped>
input[type=text], textarea {
    font-family: 'Fredoka One', cursive;
    text-align: center;
    font-size: 20px;
    padding: 20px;
}
</style>
