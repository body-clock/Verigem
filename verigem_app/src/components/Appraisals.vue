<template>
  <div class="appraisals">
    <Appraisal
      v-for="appraisal in allAppraisals"
      :key="appraisal.id"
      :title="appraisal.title"
      ></Appraisal>
  </div>
</template>

<script>
import {mapActions, mapGetters} from 'vuex'
import Appraisal from '@/components/Appraisal';
export default {
  name: "Appraisals",
  components: { Appraisal },
  methods: {
    ...mapActions([
        'fetchAppraisals'
    ])
  },
  computed: {
    ...mapGetters([
        'allAppraisals'
    ])
  },
  created() {
    this.fetchAppraisals();
  }
}
</script>

<style scoped>
  .appraisals {
    display: flex;
    justify-content: center;
  }
</style>