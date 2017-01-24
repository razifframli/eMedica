<%@page import="Config.Config"%>		
<div class="col-sm-3 col-md-2 sidebar">
    <div class="brand"></div>
    <ul id="menu-content" class="nav nav-sidebar">
        <!-- // menu tanpa dropdown -->
        <li>
            <a id="registe" href="index.jsp#tab_default_1" data-toggle="tab">
                <i class="fa fa-adress-card-o fa-lg"></i> Registration
            </a>
        </li>
        <li>
            <a id="pmi" href="index.jsp#tab_default_2" data-toggle="tab">
                <i class="fa fa-bed fa-lg"></i> Patient Master Index
            </a>
        </li>
        <li>
            <a href="<%=Config.getBase_url(request)%>Employment.html">
                <i class="fa fa-briefcase fa-lg"></i> Employment
            </a>
        </li>
        <li>
            <a href="<%=Config.getBase_url(request)%>kin.html">
                <i class="fa fa-forward fa-lg"></i> Next of Kin
            </a>
        </li>
        <li>
            <a href="<%=Config.getBase_url(request)%>family.html">
                <i class="fa fa-users fa-lg"></i> Family
            </a>
        </li>
        <li>
            <a href="<%=Config.getBase_url(request)%>medical-insurance.html">
                <i class="fa fa-ambulance-o fa-lg"></i> Medical Insurance
            </a>
        </li>
        <li>
            <a href="<%=Config.getBase_url(request)%>queue.jsp">
                <i class="fa fa-ambulance-o fa-lg"></i> List of Queue
            </a>
        </li>

        <!-- // menu tanpa dropdown -->

        <!-- Menu with dropdown -->
        <!-- <li  data-toggle="collapse" data-target="#Subjective" class="collapsed active">
          <a href="#"><i class="fa fa-gift fa-lg"></i> Subjective <span class="arrow"></span></a>
        </li>
        <ul class="sub-menu collapse" id="Subjective">
        <li><a data-toggle="modal" data-target="#squarespaceModal" href="">Complaints</a></li>
        </ul> -->
        <!-- Menu with dropdown -->
    </ul>
</div>  
