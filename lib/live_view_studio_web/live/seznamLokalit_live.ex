defmodule LiveViewStudioWeb.SeznamLokalitLive do
  use LiveViewStudioWeb, :live_view

  def mount(_params, _session, socket) do
    socket = assign(socket, :brightness, 10)
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="seznamLokalit">
      <div>
        <img src={~p"/images/hotelFontana.png"}>
        <div>
          <h4>
          Hotel fontána
          </h4>
          <p>
          Nachází se v nadmořské výšce 750 m v malebné oblasti na břehu Lipna. Hodiny plavání probíhají ve vyhřívaném hotelovém bazénu.
          </p>
          <a href="###">
          více informací
          </a>
        </div>
      </div>
      <div>
        <img src={~p"/images/hotelFontana.png"}>
        <div>
          <h4>
          Hotel fontána
          </h4>
          <p>
          Nachází se v nadmořské výšce 750 m v malebné oblasti na břehu Lipna. Hodiny plavání probíhají ve vyhřívaném hotelovém bazénu.
          </p>
          <a href="###">
          více informací
          </a>
        </div>
      </div>
      <div>
        <img src={~p"/images/hotelFontana.png"}>
        <div>
          <h4>
          Hotel fontána
          </h4>
          <p>
          Nachází se v nadmořské výšce 750 m v malebné oblasti na břehu Lipna. Hodiny plavání probíhají ve vyhřívaném hotelovém bazénu.
          </p>
          <a href="###">
          více informací
          </a>
        </div>
      </div>
    </div>
    """
  end

end
