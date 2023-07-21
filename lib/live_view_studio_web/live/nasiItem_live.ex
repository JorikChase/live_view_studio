defmodule LiveViewStudioWeb.NasiItemLive do
  use LiveViewStudioWeb, :live_view

  def render(assigns) do
    ~H"""
    <div class="nasiItemWrap">
    <div class="nasiItem">
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
          <div class="nasiItemInfo">
            <span>Studentka sociologie na Filozofické fakultě Univerzity Karlovy</span>
            <span>Trenérka plavání III. třídy</span>
            <span>Instruktorka ZŠ plavání a ZŠ PRO DĚTI (od 2021)</span>
            <span>Výuka plávání a rehabilitace s tělesně i mentálně hendikepovanými dětmi v občanském sdružení Kontakt BB.</span>
            <span>Závodní plavkyně Prachatice (2010-14).</span>
          </div>
    </div>
    <div class="nasiItemWrap">
    <div class="nasiItem">
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
          <div class="nasiItemInfo">
            <span>Studentka sociologie na Filozofické fakultě Univerzity Karlovy</span>
            <span>Trenérka plavání III. třídy</span>
            <span>Instruktorka ZŠ plavání a ZŠ PRO DĚTI (od 2021)</span>
            <span>Výuka plávání a rehabilitace s tělesně i mentálně hendikepovanými dětmi v občanském sdružení Kontakt BB.</span>
            <span>Závodní plavkyně Prachatice (2010-14).</span>
          </div>
    </div>
    """
  end

end
