/* reBoot for DLE 21: scoped behaviour, no global prototype extensions. */
(() => {
  'use strict';
  const reducedMotion = matchMedia('(prefers-reduced-motion: reduce)').matches;
  const ready = () => {
    const themeButton = document.getElementById('darkModeSwitch');
    themeButton?.setAttribute('aria-pressed', String(document.documentElement.dataset.theme === 'dark'));
    themeButton?.addEventListener('click', () => window.rebootTheme?.(document.documentElement.dataset.theme === 'dark' ? 'light' : 'dark'));
    const setFont = value => {
      document.documentElement.classList.toggle('font-sm', value === 'small');
      document.documentElement.classList.toggle('font-lg', value === 'large');
      document.querySelectorAll('[data-font]').forEach(button => button.setAttribute('aria-pressed', String(button.dataset.font === value)));
    };
    try { setFont(localStorage.getItem('reboot-font') || 'normal'); } catch (_) {}
    document.querySelectorAll('[data-font]').forEach(button => button.addEventListener('click', () => {
      setFont(button.dataset.font);
      try { localStorage.setItem('reboot-font', button.dataset.font); } catch (_) {}
    }));
    document.querySelectorAll('.tiny-slider-inner').forEach(slider => {
      if (!window.tns || slider.children.length < 2) return;
      const number = (key, fallback) => Number(slider.dataset[key]) || fallback;
      tns({ container: slider, items: number('itemsXs', 1), gutter: number('gutter', 0),
        controls: slider.dataset.arrow !== 'false', nav: slider.dataset.dots !== 'false',
        controlsText: ['<span aria-hidden="true">‹</span><span class="visually-hidden">Назад</span>', '<span aria-hidden="true">›</span><span class="visually-hidden">Вперёд</span>'],
        autoplay: false, mouseDrag: true, speed: reducedMotion ? 0 : 350,
        responsive: {576: {items: number('itemsSm', 1)},768: {items: number('itemsMd', 1)},992: {items: number('itemsLg', number('itemsMd', 1))},1200: {items: number('itemsXl', 1)}}
      });
    });
    const top = document.querySelector('.back-top');
    const updateTop = () => top?.classList.toggle('back-top-show', scrollY > 500);
    window.addEventListener('scroll', updateTop, {passive: true}); updateTop();
    top?.addEventListener('click', () => window.scrollTo({top: 0, behavior: reducedMotion ? 'instant' : 'smooth'}));
    document.querySelector('[data-share]')?.addEventListener('click', async () => {
      const status = document.querySelector('.share-status');
      try {
        if (navigator.share) await navigator.share({title: document.title, url: location.href});
        else { await navigator.clipboard.writeText(location.href); status.textContent = 'Ссылка скопирована'; }
      } catch (error) { if (error.name !== 'AbortError') status.textContent = location.href; }
    });
    let loading = false;
    document.addEventListener('click', async event => {
      const link = event.target.closest('#nav-load a');
      if (!link || event.ctrlKey || event.metaKey || event.shiftKey) return;
      const content = document.getElementById('dle-content'); if (!content) return;
      event.preventDefault(); if (loading) return; loading = true;
      const oldText = link.textContent; link.textContent = 'Загрузка…'; link.setAttribute('aria-disabled', 'true');
      try {
        const response = await fetch(link.href, {credentials: 'same-origin'});
        if (!response.ok) throw new Error('HTTP ' + response.status);
        const next = new DOMParser().parseFromString(await response.text(), 'text/html');
        const incoming = next.getElementById('dle-content');
        if (!incoming || !incoming.children.length) throw new Error('No publications');
        content.querySelector('#bottom-nav')?.remove();
        const nextNav = next.getElementById('bottom-nav'); nextNav?.remove();
        incoming.querySelectorAll('script').forEach(script => script.remove()); content.append(...incoming.childNodes);
        document.getElementById('bottom-nav')?.remove(); if (nextNav) content.after(nextNav);
      } catch (_) {
        link.textContent = oldText; link.removeAttribute('aria-disabled');
        let status = document.getElementById('load-status');
        if (!status) { status = document.createElement('p'); status.id = 'load-status'; status.role = 'status'; link.after(status); }
        status.textContent = 'Не удалось загрузить. Повторите попытку или выберите страницу выше.';
      } finally { loading = false; }
    });
    document.querySelectorAll('.modal').forEach(modal => modal.addEventListener('shown.bs.modal', () => modal.querySelector('input:not([type=hidden])')?.focus()));
    document.querySelector('#navSearch')?.closest('.dropdown')?.addEventListener('shown.bs.dropdown', () => document.getElementById('story')?.focus());
  };
  document.readyState === 'loading' ? document.addEventListener('DOMContentLoaded', ready) : ready();
})();
