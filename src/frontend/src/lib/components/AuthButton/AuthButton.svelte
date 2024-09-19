<script>
	import { authStore } from '$lib/stores/auth.store';

	function handleSignIn() {
		console.log('sign in initiated');
		try {
			authStore.signIn({ domain: 'internetcomputer.org' });
		} catch (error) {
			console.error('Sign in error:', error);
		}
	}
</script>

<div>
	{#if $authStore.identity}
		<button on:click={authStore.signOut}>SignOut</button>
	{:else}
		<button on:click={handleSignIn}> SignIn </button>
	{/if}
</div>

<style>
	button {
		padding: 10px 20px;
		margin: 10px auto;
		font-size: larger;
	}

	div {
		display: flex;
		justify-content: center;
	}
</style>
