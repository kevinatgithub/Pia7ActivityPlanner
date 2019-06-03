<template>
    <div class="row">
        <div class="col-sm-12">
            <b-card no-body class="overflow-hidden" >
                <b-row no-gutters>
                    <b-col md="6">
                        <b-card-img src="http://pia7th.bobongmd.com/vendor/pia/img/logo.jpg" class="rounded-0"></b-card-img>
                    </b-col>
                    <b-col md="6">
                        <b-card-body title="Invitation Code">
                        <b-card-text>
                            Plan your kids activities on KidZania ahead,<br/>
                            Please enter your invitation code below.
                            <b-form @submit="onSubmit" class="mt-2">
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
            validation: null
        }
    },
    methods : {
        onSubmit(){

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
