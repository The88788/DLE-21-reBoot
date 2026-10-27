(() => {
  const style = document.getElementById('style-switch');
  if (!style) return;
  const light = style.href;
  let saved;
  try { saved = localStorage.getItem('reboot-theme'); } catch (_) {}
  const theme = saved || (matchMedia('(prefers-color-scheme: dark)').matches ? 'dark' : 'light');
  window.rebootTheme = value => {
    document.documentElement.dataset.theme = value;
    style.href = value === 'dark' ? light.replace(/style\.css(?=\?|$)/, 'style-dark.css') : light;
    try { localStorage.setItem('reboot-theme', value); } catch (_) {}
    document.getElementById('darkModeSwitch')?.setAttribute('aria-pressed', String(value === 'dark'));
  };
  rebootTheme(theme);
})();
