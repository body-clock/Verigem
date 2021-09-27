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
    },
    async addAppraisal({ commit }, [brand, item_type, client_notes]) {
        const response = await axios.post(api_url,
            {
                appraisal: {
                    brand,
                    item_type,
                    client_notes,
                    status: "Pending"
                }
            });
        commit('newAppraisal', response.data)
    }
};
const mutations = {
    setAppraisals: (state, appraisals) => (state.appraisals = appraisals),
    newAppraisal: (state, appraisal) => (state.appraisals.unshift(appraisal))
};

export default {
    state,
    getters,
    actions,
    mutations
}