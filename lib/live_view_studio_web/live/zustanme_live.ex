defmodule LiveViewStudioWeb.ZustanmeLive do
  use LiveViewStudioWeb, :live_view

  def mount(_params, _session, socket) do
    socket = assign(socket, :shown, 3)
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="zustanme">
      <div>
        <h3>
        zůstaňme V KONTAKTU
        </h3>
        <p>
        Mauris tempus libero sed ex luctus faucibus. Mauris lacinia, augue at commodo aliquam, ipsum augue rutrum velit, sed sagittis lorem ligula nec justo.
        </p>
        <span>
        Váš e-mail
        </span>
        <form>
          <label for="email">@</label>
          <input type="text" id="email" name="fname"><br><br>
          <input type="checkbox" id="subscribe" name="subscribe" value="Agreed">
          <label for="subscribe"> Přihlášením k odběru uděluji svůj souhlas společnosti Flashtones, aby zpracovávala mé osobní údaje (e-mailovou adresu). Celé znění souhlasu najdete zde.</label><br>
          <input type="submit" value="Submit" class="button">
        </form>
      </div>
      <img src={~p"/images/zustanmeImg.png"}>
    </div>
    """
  end

  def handle_event("down", _, socket) do
    socket = assign(socket, :shown, 100)
    {:noreply, socket}
  end

  def handle_event("up", _, socket) do
    socket = assign(socket, :shown, 3)
    {:noreply, socket}
  end

  def handle_event("down", _, socket) do
    socket = update(socket, :shown, &max(&1 - 10, 0))
    {:noreply, socket}
  end

  def handle_event("up", _, socket) do
    socket = update(socket, :shown, &min(&1 + 10, 100))
    {:noreply, socket}
  end
end
