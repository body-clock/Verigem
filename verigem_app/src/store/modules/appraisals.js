import axios from 'axios';

const api_url = 'http://localhost:3000/api/v1/appraisals'

const state = {
    appraisals: []
};
const getters = {
    allAppraisals: (state) => state.appraisals
};
const actions = {
    async fetchAppraisals({ commit }) {
        const response = await axios.get(api_url)
        commit('setAppraisals', response.data)
    }
};
const mutations = {
    setAppraisals: (state, appraisals) => (state.appraisals = appraisals)
};

export default {
    state,
    getters,
    actions,
    mutations
}