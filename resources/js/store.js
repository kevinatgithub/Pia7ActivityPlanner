import Vue from 'vue';
import Vuex from 'vuex';

Vue.use(Vuex);

export default new Vuex.Store({
    state : {
        guestGroup : null,
        guest : null,
        appointments : [],
        creatingAppointment : false,
        activity : null
    },
    mutations : {
        setGuestGroup(state,guestGroup){
            state.guestGroup = guestGroup;
        },
        setGuest(state,guest){
            state.guest = guest
        },
        setAppointments(state,appointments){
            state.appointments = appointments
        },
        setCreatingAppointment(state,status){
            state.creatingAppointment = status
        },
        setActivity(state,activity){
            state.activity = activity
        }
    }
});