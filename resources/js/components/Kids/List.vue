<template>
    <div class="row">
        <div class="mt-5 col-sm-8 offset-sm-2">
            <div>
                <b-card class="text-center" title="Your Companion">
                    <b-card-text>
                        Click a name from your listed companion to select their activities on KidZania
                    </b-card-text>

                    <b-list-group>
                        <b-list-group-item class="list-item" @click="companionSelected">Cras justo odio</b-list-group-item>
                        <b-list-group-item class="list-item" @click="companionSelected">Dapibus ac facilisis in</b-list-group-item>
                        <b-list-group-item class="list-item" @click="companionSelected">Morbi leo risus</b-list-group-item>
                        <b-list-group-item class="list-item" @click="companionSelected">Porta ac consectetur ac</b-list-group-item>
                        <b-list-group-item class="list-item" @click="companionSelected">Vestibulum at eros</b-list-group-item>
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

