<template>
  <div id="app">
    <button v-on:click="show" class="show1">
      <i class="fas fa-chevron-up"></i>
    </button>
  </div>
</template>

<script>
export default {
  data: function() {
    return {
      message: "Hello Vue!"
    };
  },
  methods: {
    show: function(event) {
      alert("あーー");
    }
  }
};
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
.show1 {
  width: 45px;
  height: 45px;
  border-radius: 50%;
}
</style>
