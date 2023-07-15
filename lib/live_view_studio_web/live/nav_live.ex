defmodule LiveViewStudioWeb.NavLive do
  use LiveViewStudioWeb, :live_view

  def mount(_params, _session, socket) do
    socket = assign(socket, :shown, 3)
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <body>
    <nav style={"bottom:#{100 - (@shown)}vh; color: rgba(255, 255, 255, #{(@shown)/100});"}>

      <div class="navHero" style={"opacity:#{(@shown)};"}>
        <h3>MY JSME <span>FLASHTONES</span></h3>
        <p>Flashtones znamená okázalé tóny. Tóny dělají hudbu krásnou v její různorodosti a originalitě, to samé vytváří u módy a oblékání. Co říkáte, odrbaný hit nebo osobitý song? Uniforma nebo Flashtones?</p>
        <a><span>click me</span></a>
      </div>
      <div class="navMap" style={"opacity:#{(@shown)};"}>
      <div>
        <span class="noBreak">
          <h3>pro děti
          </h3>
          <svg style={"fill-opacity:#{(@shown)}%;"} width="1em" height="1em" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path d="M19 11.9908C18.9951 11.4647 18.7832 10.9617 18.41 10.5908L14.12 6.29079C13.9326 6.10454 13.6792 6 13.415 6C13.1508 6 12.8974 6.10454 12.71 6.29079C12.6163 6.38376 12.5419 6.49436 12.4911 6.61622C12.4403 6.73808 12.4142 6.86878 12.4142 7.00079C12.4142 7.1328 12.4403 7.26351 12.4911 7.38537C12.5419 7.50723 12.6163 7.61783 12.71 7.71079L16 10.9908H6C5.73478 10.9908 5.48043 11.0961 5.29289 11.2837C5.10536 11.4712 5 11.7256 5 11.9908C5 12.256 5.10536 12.5104 5.29289 12.6979C5.48043 12.8854 5.73478 12.9908 6 12.9908H16L12.71 16.2808C12.5217 16.4678 12.4154 16.7219 12.4144 16.9873C12.4135 17.2526 12.518 17.5075 12.705 17.6958C12.892 17.8841 13.1461 17.9904 13.4115 17.9913C13.6768 17.9923 13.9317 17.8878 14.12 17.7008L18.41 13.4008C18.7856 13.0274 18.9978 12.5204 19 11.9908Z" fill="white"/>
            </svg>
        </span>
        <p>Přenech výchovu svých dětí na nás a užívej si života! estibulum vestibulum ipsum quis dolor.</p> <br>
        <a href="###">ZŠ Plavání: Plavecké kurzy</a><br>
        <a href="###">ZŠ Enviro: Školy v přírodě a příměstské tábory</a><br>
        <a href="###">ZŠ Lyžování: Lyžařské kurzy</a><br>
        <a href="###">ZŠ Doma: Učitel do domu</a><br>
        <a href="###">ZŠ Výlety: Jednodenní a vícedenní výlety</a><br>
      </div>
      <div>
        <span class="noBreak">
          <h3>oblečení
          </h3>
          <svg style={"fill-opacity:#{(@shown)}%;"} width="1em" height="1em" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path d="M19 11.9908C18.9951 11.4647 18.7832 10.9617 18.41 10.5908L14.12 6.29079C13.9326 6.10454 13.6792 6 13.415 6C13.1508 6 12.8974 6.10454 12.71 6.29079C12.6163 6.38376 12.5419 6.49436 12.4911 6.61622C12.4403 6.73808 12.4142 6.86878 12.4142 7.00079C12.4142 7.1328 12.4403 7.26351 12.4911 7.38537C12.5419 7.50723 12.6163 7.61783 12.71 7.71079L16 10.9908H6C5.73478 10.9908 5.48043 11.0961 5.29289 11.2837C5.10536 11.4712 5 11.7256 5 11.9908C5 12.256 5.10536 12.5104 5.29289 12.6979C5.48043 12.8854 5.73478 12.9908 6 12.9908H16L12.71 16.2808C12.5217 16.4678 12.4154 16.7219 12.4144 16.9873C12.4135 17.2526 12.518 17.5075 12.705 17.6958C12.892 17.8841 13.1461 17.9904 13.4115 17.9913C13.6768 17.9923 13.9317 17.8878 14.12 17.7008L18.41 13.4008C18.7856 13.0274 18.9978 12.5204 19 11.9908Z" fill="white"/>
            </svg>
        </span>
        <p>Buď stylovej! Nullam vel ornare ipsum. Proin neque erat, luctus non tincidunt sed, varius a est.</p> <br>
        <a href="###">Ponožky: Lorem ipsum dolor</a><br>
        <a href="###">Dashiky: Barevný oděv lorem</a><br>
        <a href="###">Šátky: Concsectetuer</a><br>
        <a href="###">Šperky: Pit amevanares</a><br>
        <a href="###">Kniha: Ostrov Socci</a><br>
      </div>
      <div id="navMapColumn">
        <div>
        <span class="noBreak">
          <h3>eventy
          </h3>
          <svg style={"fill-opacity:#{(@shown)}%;"} width="1em" height="1em" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path d="M19 11.9908C18.9951 11.4647 18.7832 10.9617 18.41 10.5908L14.12 6.29079C13.9326 6.10454 13.6792 6 13.415 6C13.1508 6 12.8974 6.10454 12.71 6.29079C12.6163 6.38376 12.5419 6.49436 12.4911 6.61622C12.4403 6.73808 12.4142 6.86878 12.4142 7.00079C12.4142 7.1328 12.4403 7.26351 12.4911 7.38537C12.5419 7.50723 12.6163 7.61783 12.71 7.71079L16 10.9908H6C5.73478 10.9908 5.48043 11.0961 5.29289 11.2837C5.10536 11.4712 5 11.7256 5 11.9908C5 12.256 5.10536 12.5104 5.29289 12.6979C5.48043 12.8854 5.73478 12.9908 6 12.9908H16L12.71 16.2808C12.5217 16.4678 12.4154 16.7219 12.4144 16.9873C12.4135 17.2526 12.518 17.5075 12.705 17.6958C12.892 17.8841 13.1461 17.9904 13.4115 17.9913C13.6768 17.9923 13.9317 17.8878 14.12 17.7008L18.41 13.4008C18.7856 13.0274 18.9978 12.5204 19 11.9908Z" fill="white"/>
            </svg>
        </span>
            <p>Morbi quis diam interdum augue efficitur tincidunt. Suspendisse potenti.</p> <br>
        </div>
        <div>
        <span class="noBreak">
          <h3>studio
          </h3>
          <svg style={"fill-opacity:#{(@shown)}%;"} width="1em" height="1em" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path d="M19 11.9908C18.9951 11.4647 18.7832 10.9617 18.41 10.5908L14.12 6.29079C13.9326 6.10454 13.6792 6 13.415 6C13.1508 6 12.8974 6.10454 12.71 6.29079C12.6163 6.38376 12.5419 6.49436 12.4911 6.61622C12.4403 6.73808 12.4142 6.86878 12.4142 7.00079C12.4142 7.1328 12.4403 7.26351 12.4911 7.38537C12.5419 7.50723 12.6163 7.61783 12.71 7.71079L16 10.9908H6C5.73478 10.9908 5.48043 11.0961 5.29289 11.2837C5.10536 11.4712 5 11.7256 5 11.9908C5 12.256 5.10536 12.5104 5.29289 12.6979C5.48043 12.8854 5.73478 12.9908 6 12.9908H16L12.71 16.2808C12.5217 16.4678 12.4154 16.7219 12.4144 16.9873C12.4135 17.2526 12.518 17.5075 12.705 17.6958C12.892 17.8841 13.1461 17.9904 13.4115 17.9913C13.6768 17.9923 13.9317 17.8878 14.12 17.7008L18.41 13.4008C18.7856 13.0274 18.9978 12.5204 19 11.9908Z" fill="white"/>
            </svg>
        </span>
            <p>Nulla imperdiet rutrum erat vitae faucibus. Morbi id pellentesque sem. Vestibulum molestie mi.</p> <br>
        </div>
        <div>
        <span class="noBreak">
          <h3>eshop
          </h3>
          <svg style={"fill-opacity:#{(@shown)}%;"} width="1em" height="1em" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path d="M19 11.9908C18.9951 11.4647 18.7832 10.9617 18.41 10.5908L14.12 6.29079C13.9326 6.10454 13.6792 6 13.415 6C13.1508 6 12.8974 6.10454 12.71 6.29079C12.6163 6.38376 12.5419 6.49436 12.4911 6.61622C12.4403 6.73808 12.4142 6.86878 12.4142 7.00079C12.4142 7.1328 12.4403 7.26351 12.4911 7.38537C12.5419 7.50723 12.6163 7.61783 12.71 7.71079L16 10.9908H6C5.73478 10.9908 5.48043 11.0961 5.29289 11.2837C5.10536 11.4712 5 11.7256 5 11.9908C5 12.256 5.10536 12.5104 5.29289 12.6979C5.48043 12.8854 5.73478 12.9908 6 12.9908H16L12.71 16.2808C12.5217 16.4678 12.4154 16.7219 12.4144 16.9873C12.4135 17.2526 12.518 17.5075 12.705 17.6958C12.892 17.8841 13.1461 17.9904 13.4115 17.9913C13.6768 17.9923 13.9317 17.8878 14.12 17.7008L18.41 13.4008C18.7856 13.0274 18.9978 12.5204 19 11.9908Z" fill="white"/>
            </svg>
        </span>
          <p>Phasellus scelerisque fermentum libero, nec fermentum metus eleifend vel. Ut nec erat sed.</p> <br>
        </div>
      </div>
      </div>
      <div style={"opacity:#{(@shown)};"}></div>
    </nav>
    <div class="navToggle">

      <button class="navToggleButton" phx-click="up" style={"opacity:#{(@shown)}%;"}>
        zavřít
      </button>

      <button class="navToggleButton" phx-click="down" style={"opacity:#{100 - (@shown)}%;"}>
      ∨
      </button>

    </div>

    </body>
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
