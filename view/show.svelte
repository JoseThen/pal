<script>
  export let story = {}
</script>

<h1>Show Story</h1>

<table border="1" cellpadding="10">
  <thead>
    {#each Object.keys(story) as key}
      <th>{key}</th>
    {/each}
  </thead>
  <tr>
    {#each Object.keys(story) as key}
      <td>{story[key]}</td>
    {/each}
  </tr>
</table>

<br />

<a href={`/`}>Back</a>
<span> | </span>
<a href={`/${story.id || 0}/edit`}>Edit</a>

<style>
  table {
    border-collapse: collapse;
  }
</style>
