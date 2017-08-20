
<div class="text-right">
    <div class="credits">
        <!--
            All the links in the footer should remain intact.
            You can delete the links only if you purchased the pro version.
            Licensing information: https://bootstrapmade.com/license/
            Purchase the pro version form: https://bootstrapmade.com/buy/?theme=NiceAdmin
        -->
        <a href="https://bootstrapmade.com/free-business-bootstrap-themes-website-templates/">Business Bootstrap Themes</a> by <a href="https://bootstrapmade.com/">BootstrapMade</a>
    </div>
</div>
</section>
<!--main content end-->
</section>
<!-- container section start -->

<!-- javascripts -->
<script src="<c:url value="/resources/js/jquery.js"/>"></script>
<script src="<c:url value="/resources/js/jquery-ui-1.10.4.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery-1.8.3.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/jquery-ui-1.9.2.custom.min.js"/>"></script>
<!-- bootstrap -->
<script src="<c:url value="/resources/js/admin/bootstrap.min.js"/>"></script>
<!-- nice scroll -->
<script src="<c:url value="/resources/js/jquery.scrollTo.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.nicescroll.js"/>"></script>
<!-- charts scripts -->
<script src="<c:url value="/resources/assets/jquery-knob/js/jquery.knob.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.sparkline.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"/>"></script>
<script src="<c:url value="/resources/js/owl.carousel.js"/>" ></script>
<!-- jQuery full calendar -->
<<script src="<c:url value="/resources/js/fullcalendar.min.js"/>"></script> <!-- Full Google Calendar - Calendar -->
<script src="<c:url value="/resources/assets/fullcalendar/fullcalendar/fullcalendar.js"/>"></script>
<!--script for this page only-->
<script src="<c:url value="/resources/js/calendar-custom.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.rateit.min.js"/>"></script>
<!-- custom select -->
<script src="<c:url value="/resources/js/jquery.customSelect.min.js"/>" ></script>
<script src="<c:url value="/resources/assets/chart-master/Chart.js"/>"></script>

<!--custome script for all page-->
<script src="<c:url value="/resources/js/scripts.js"/>"></script>
<!-- custom script for this page-->
<script src="<c:url value="/resources/js/sparkline-chart.js"/>"></script>
<script src="<c:url value="/resources/js/easy-pie-chart.js"/>"></script>
<script src="<c:url value="/resources/js/jquery-jvectormap-1.2.2.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery-jvectormap-world-mill-en.js"/>"></script>
<script src="<c:url value="/resources/js/xcharts.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.autosize.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.placeholder.min.js"/>"></script>
<script src="<c:url value="/resources/js/gdp-data.js"/>"></script>
<script src="<c:url value="/resources/js/morris.min.js"/>"></script>
<script src="<c:url value="/resources/js/sparklines.js"/>"></script>
<script src="<c:url value="/resources/js/charts.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.slimscroll.min.js"/>"></script>
<script>

    //knob
    $(function() {
        $(".knob").knob({
            'draw' : function () {
                $(this.i).val(this.cv + '%')
            }
        })
    });

    //carousel
    $(document).ready(function() {
        $("#owl-slider").owlCarousel({
            navigation : true,
            slideSpeed : 300,
            paginationSpeed : 400,
            singleItem : true

        });
    });

    //custom select box

    $(function(){
        $('select.styled').customSelect();
    });

    /* ---------- Map ---------- */
    $(function(){
        $('#map').vectorMap({
            map: 'world_mill_en',
            series: {
                regions: [{
                    values: gdpData,
                    scale: ['#000', '#000'],
                    normalizeFunction: 'polynomial'
                }]
            },
            backgroundColor: '#eef3f7',
            onLabelShow: function(e, el, code){
                el.html(el.html()+' (GDP - '+gdpData[code]+')');
            }
        });
    });

</script>

</body>
</html>
