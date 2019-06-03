<template>
    <div class="row">
        <div class="mt-5 col-sm-12">
            <div>
                <b-card class="text-center" title="Your Companion">
                    <b-card-text>
                        Click a name from your listed companion to select their activities on KidZania
                    </b-card-text>

                    <b-list-group>
                        <b-list-group-item class="list-item" @click="companionSelected">James Reid</b-list-group-item>
                        <b-list-group-item class="list-item" @click="companionSelected">Nadine Lustre</b-list-group-item>
                        <b-list-group-item class="list-item" @click="companionSelected">Liza Soberano</b-list-group-item>
                    </b-list-group>

                    <b-card-text>
                        Is your companion name not listed? <b-link href="#">Click here</b-link><br/>
                        <b-link href="#">Go Back</b-link>
                    </b-card-text>
                </b-card>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    methods : {
        companionSelected(){
            alert('asd')
        }
    }
}
</script>

