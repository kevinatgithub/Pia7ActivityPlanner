<template>
    <div class="row">
        <div class="col-md-12">
            <b-card bg-variant="light" :header="activity.title">
                <b-card-text>{{activity.partner}} | Available Time Slots</b-card-text>
                <b-list-group>
                    <b-list-group-item class="list-item">8:00 AM to 8:30 AM (6 Slots left)</b-list-group-item>
                    <b-list-group-item class="list-item">8:30 AM to 9:00 AM (4 Slots left)</b-list-group-item>
                    <b-list-group-item class="list-item">9:00 AM to 9:30 AM (10 Slots left)</b-list-group-item>
                    <b-list-group-item class="list-item">9:30 AM to 10:00 AM (2 Slots left)</b-list-group-item>
                    <b-list-group-item class="list-item">10:00 AM to 10:30 AM (10 Slots left)</b-list-group-item>
                </b-list-group>
            </b-card>
            <div style="max-height:250px; overflow:hidden;">
                <b-card
                    overlay
                    :img-src="activity.img"
                    img-alt="Card Image"
                    :text-variant="activity.textColor"
                    :title="activity.title"
                >
                    <b-card-text>
                    {{activity.partner}}
                    </b-card-text>
                </b-card>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data(){
        return {
            activity : {
                title: "Acting Academy",
                partner: "Star Magic",
                img : "https://d1eilicilqktnj.cloudfront.net/establishments/establishment_thumbnails/54/larger/Activities-ActingAcad.jpeg?1508897010",
                textColor : "white"
            }
        }
    }
}
</script>
