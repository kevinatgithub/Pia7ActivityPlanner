<template>
    <div class="row">
        <div class="mt-5 col-sm-12">
            <b-card class="text-center" title="Mark Joseph Pantaleon">
                <b-card-text>
                    Below are the selected activities for Mark Joseph Pantaleon.<br/>
                    <b-list-group>
                        <b-list-group-item class="list-item" @click="activitySelected">Acting Academy @ 8 AM</b-list-group-item>
                        <b-list-group-item class="list-item" @click="activitySelected">Dancing @ 9 AM</b-list-group-item>
                        <b-list-group-item class="list-item" @click="activitySelected">Coffee Shop @ 1 PM</b-list-group-item>
                    </b-list-group>
                    <b-button variant="success" class="mt-2 col-sm-12">Click to add another activity</b-button>
                    <b-button variant="light" class="mt-2 col-sm-12">Select another Companion</b-button>
                </b-card-text>
            </b-card>
        </div>
    </div>
</template>

<script>
export default {
    methods : {
        activitySelected(){

        }
    }
}
</script>
