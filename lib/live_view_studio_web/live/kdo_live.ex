defmodule LiveViewStudioWeb.KdoLive do
  use LiveViewStudioWeb, :live_view

  def mount(_params, _session, socket) do
    socket = assign(socket, :shown, 3)
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="kdo">
      <div class="kdoText">
        <h3>KDO JSME</h3>
        <p>moris piktus no hombres allos novadum, ilyyy sooo much!!</p>
        <div>
          <a href="###">
            O nás
          </a>
          <a href="###">
            Historie flashtones
          </a>
          <a href="###">
            Naši lidé
          </a>
        </div>
      </div>
      <div class="kdoPersons">
        <a href="###">
        <img src={~p"/images/kdoMar.png"} />
          <h4>
            Marcel Valouch
          </h4>
          <p>
            Hlavní manager ZŠ PRO DĚTI
          </p>
        </a>
        <a href="###">
        <img src={~p"/images/kdoOmi.png"} />
          <h4>
            Omar el Karib
          </h4>
          <p>
            Hlavní manager ZŠ PRO DĚTI
          </p>
        </a>
      </div>
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
