<%@ page import="com.runbuggy.util.CodeConstants" %>
<%--
  Created by IntelliJ IDEA.
  User: KS141
  Date: 6/14/16
  Time: 10:54 AM
--%>

<!DOCTYPE html>
<html>
<head>
    <title>Runbuggy</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <link href="<%=request.getContextPath() %>/css/bootstrap.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/assets/css/bootstrap-theme.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="<%=request.getContextPath() %>/assets/css/iconmoon.css" rel="stylesheet">

    <link href="<%=request.getContextPath() %>/assets/css/style.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/assets/css/cs-automobile-plugin.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/assets/css/color.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/assets/css/widget.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/assets/css/responsive.css" rel="stylesheet">

    <link href="<%=request.getContextPath() %>/css/jquery.dynatable.css" rel="stylesheet" type="text/css">

    <link href="<%=request.getContextPath() %>/css/custom.css" rel="stylesheet">

    <link href="<%=request.getContextPath() %>/css/timeline.css" rel="stylesheet">

    <link href="<%=request.getContextPath()%>/assets/css/chosen.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/jquery.webui-popover.css" rel="stylesheet">

    <link href="<%=request.getContextPath()%>/vertical-timeline/css/style.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/mfb.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/index.css" rel="stylesheet">

    <link href="<%=request.getContextPath()%>/css/rbResponsive.css" rel="stylesheet">

    <script src="<%=request.getContextPath() %>/assets/scripts/jquery.js"></script>
    <script src="<%=request.getContextPath() %>/js/bootstrap.js"></script>
    <script src="<%=request.getContextPath() %>/assets/scripts/modernizr.js"></script>
    <script src="<%=request.getContextPath() %>/assets/scripts/responsive.menu.js"></script>
    <script src="<%=request.getContextPath()%>/assets/scripts/chosen.select.js"></script>

    <script src="<%=request.getContextPath() %>/assets/scripts/slick.js"></script>
    <script src="<%=request.getContextPath() %>/assets/scripts/echo.js"></script>
    <script src="<%=request.getContextPath() %>/assets/scripts/functions.js"></script>

    <script src='<%=request.getContextPath()%>/js/handlebars-v4.0.5.js'></script>
    <script src="<%=request.getContextPath() %>/js/underscore-min.js"></script>
    <script src='<%=request.getContextPath() %>/js/jquery.dynatable.js'></script>
    <script src='<%=request.getContextPath() %>/js/jquery.webui-popover.js'></script>

    %{--Image Gallery--}%
    <script type='text/javascript' src='<%=request.getContextPath() %>/unitegallery/js/unitegallery.min.js'></script>
    <link rel='stylesheet' href='<%=request.getContextPath() %>/unitegallery/css/unite-gallery.css' />
    <script type='text/javascript' src='<%=request.getContextPath() %>/unitegallery/themes/default/ug-theme-default.js'></script>
    <link rel='stylesheet' href='<%=request.getContextPath() %>/unitegallery/themes/default/ug-theme-default.css' />

    %{--below google api key belongs to sanket.sonawane@krixi.in--}%
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=${CodeConstants.GOOGLE_API_KEY}&libraries=places"></script>

    <style>
    .btn-border {
        border: 1px solid #0072b7 !important;
        color: #0072b7 !important;
        background-color: #a9a9a9 !important;
    }

    .statusInfo {
        position: absolute;
        right: 0px;
        top: 35px;
        background-color: #f8f8f8;
        width: 80%;
        padding: 10px;
        border: 1px solid #ddd;
        box-shadow: 1px 1px 13px #ddd;
        z-index: 1000;
    }

    #basic-view li span {
        color: #363636 !important;
    }

    #basic-view li .image-icon {
        margin-right: 10px !important;
    }
    </style>

    <script src="<%=request.getContextPath() %>/js/custom.js"></script>
    <script src="<%=request.getContextPath() %>/js/jquery.slimscroll.js"></script>
    <script src="<%=request.getContextPath() %>/js/moment.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/moment-timezone-with-data-2010-2020.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/textcounter.js"></script>

    %{--for order status code constansts--}%
    <script type="text/javascript">

        var __constants = {
            "newOrder"                    : "<%= CodeConstants.OrderStates.NEW_ORDER.toString()%>",
            "rejectedByDestination"       : "<%= CodeConstants.OrderStates.REJECTED_BY_DESTINATION.toString()%>",
            "acceptedByDestination"       : "<%= CodeConstants.OrderStates.ACCEPTED_BY_DESTINATION.toString()%>",
            "transporterNotified"         : "<%= CodeConstants.OrderStates.TRANSPORTER_NOTIFIED.toString()%>",
            "acceptedByTransporter"       : "<%= CodeConstants.OrderStates.ACCEPTED_BY_TRANSPORTER.toString()%>",
            "rejectedByTransporter"       : "<%= CodeConstants.OrderStates.REJECTED_BY_TRANSPORTER.toString()%>",
            "driverNotified"              : "<%= CodeConstants.OrderStates.DRIVER_NOTIFIED.toString()%>",
            "acceptedByDriver"            : "<%= CodeConstants.OrderStates.ACCEPTED_BY_DRIVER.toString()%>",
            "orderPickedUP"               : "<%= CodeConstants.OrderStates.DRIVER_PICKED_UP.toString()%>",
            "orderInTransit"              : "<%= CodeConstants.OrderStates.DRIVER_IN_TRANSIT.toString()%>",
            "orderDelivered"              : "<%= CodeConstants.OrderStates.DELIVERED_BY_DRIVER.toString()%>",
            "orderPickedUPInTwoWayTrade"  : "<%= CodeConstants.OrderStates.DRIVER_PICKED_UP_IN_TWO_WAY_TRADE.toString()%>",
            "orderInTransitInTwoWayTrade" : "<%= CodeConstants.OrderStates.DRIVER_IN_TRANSIT_IN_TWO_WAY_TRADE.toString()%>",
            "orderDeliveredInTwoWayTrade" : "<%= CodeConstants.OrderStates.DELIVERED_BY_DRIVER_IN_TWO_WAY_TRADE.toString()%>",
            "paymentDone"                 : "<%= CodeConstants.OrderStates.PAYMENT_DONE.toString()%>",
            "orderCompleted"              : "<%= CodeConstants.OrderStates.ORDER_COMPLETED.toString()%>",
            "orderDrafted"                : "<%= CodeConstants.OrderStates.ORDER_DRAFTED.toString()%>"
        };

        var __markerIcons = {
            "pickupLocation": "../images/Google_Maps_Markers/blue_MarkerA.png",
            "dropOffLocation": "../images/Google_Maps_Markers/red_MarkerB.png"
        };

        var __orderDetails

    </script>

    %{--custom script strats here--}%
    <script type="text/javascript">

        var driverRoute;
        var driverCurrentLocation;

        var map = null;

        var firstTimeInvocation = true;
        var __orderData = [];


        var directionsDisplay;
        var directionsService = new google.maps.DirectionsService();
        google.maps.event.addDomListener(window, 'load', function () {
            new google.maps.places.SearchBox(document.getElementById('txtSource'));
            new google.maps.places.SearchBox(document.getElementById('txtDestination'));
            directionsDisplay = new google.maps.DirectionsRenderer({ 'draggable': true });
        });

        function initiallySetView() {
            $("#trackView").hide();
            $("#summaryView").hide();
            $("#galleryView").hide();
            $("#mapView").show();
            $("#recenter").show();

            $("#btn-map").addClass("btn-border");
            $("#btn-track").removeClass("btn-border");
            $("#btn-summary").removeClass("btn-border");
            $("#btn-gallery").removeClass("btn-border");
            showMap();
        }

        function showMap() {
            var mapOptions = {
                zoom: 10,

                styles: [
                    {
                        featureType: 'all',
                        stylers: [
                            { saturation: -80 }
                        ]
                    },{
                        featureType: 'road.arterial',
                        elementType: 'geometry',
                        stylers: [
                            { hue: '#00ffee' },
                            { saturation: 50 }
                        ]
                    },{
                        featureType: 'poi.business',
                        elementType: 'labels',
                        stylers: [
                            { visibility: 'off' }
                        ]
                    }
                ]

            };
            try{
                map = new google.maps.Map(document.getElementById('orderStatusMap'), mapOptions);
            } finally{
                google.maps.event.trigger(map, "resize");
            }
        }

        function setHeight() {
            var windowHeight = $(window).innerHeight() - 100;
            $('.custom-height').css('min-height', windowHeight);
            $('.custom-height-for-map').css('min-height', windowHeight - 15);
        }

        $(document).ready(function () {

            $('[data-toggle="tooltip"]').click(function () {
                $('.tooltip').fadeOut('fast', function () {
                    $('.tooltip').remove();
                });
            });

            $('.main-section').hide();
            $('#orderIdErrorMessage').hide();
            $('#orderIdMissingErrorMessage').hide();
            $(".statusInfo").hide();

            setHeight();

            $(window).resize(function() {
                setHeight();
            });

            initiallySetView();

            $('#submit').on('click', function(){
                $('#main-section').hide();
                $('#cd-timeline').empty();
                getOrderDetails($('#orderId').val().trim());
            });

            $("#btn-map").on('click', function(){
                $("#mapView").show();
                $("#recenter").show();
                $("#trackView").hide();
                $("#summaryView").hide();
                $("#galleryView").hide();

                $("#btn-map").addClass("btn-border");
                $("#btn-track").removeClass("btn-border");
                $("#btn-summary").removeClass("btn-border");
                $("#btn-gallery").removeClass("btn-border");
                showMap();
                getOrderDetails($('#orderId').val());
                showMapOnPerticularState(__orderDetails)
            });

            $("#btn-track").click(function(){
                $("#mapView").hide();
                $("#recenter").hide();
                $("#trackView").show();
                $("#summaryView").hide();
                $("#galleryView").hide();

                $("#btn-map").removeClass("btn-border");
                $("#btn-track").addClass("btn-border");
                $("#btn-summary").removeClass("btn-border");
                $("#btn-gallery").removeClass("btn-border");
            });

            $("#btn-summary").click(function(){
                $("#mapView").hide();
                $("#recenter").hide();
                $("#trackView").hide();
                $("#summaryView").show();
                $("#galleryView").hide();

                $("#btn-map").removeClass("btn-border");
                $("#btn-track").removeClass("btn-border");
                $("#btn-summary").addClass("btn-border");
                $("#btn-gallery").removeClass("btn-border");
                viewOrder($('#orderId').val().trim());
            });

            $("#btn-gallery").click(function(){
                $("#mapView").hide();
                $("#trackView").hide();
                $("#summaryView").hide();
                $("#galleryView").show();
                $("#recenter").hide();

                $("#btn-map").removeClass("btn-border");
                $("#btn-track").removeClass("btn-border");
                $("#btn-summary").removeClass("btn-border");
                $("#btn-gallery").addClass("btn-border");
                viewOrder($('#orderId').val().trim());
            });

            // Chnage on vin show images in slider...
            $("#selectVin").change(function() {
                $("#galleryPickUp").empty();
                $("#galleryDropOff").empty();
                fetchImageUrl($('#orderId').val().trim());
            });
        });

        // Images in slider start functionality
        function fetchImageUrl(orderId) {
            if(orderId != ''){
                $.ajax({
                    type: "GET",
                    url: "/runbuggy/driver/getOrderPickupAndDestinationLocationImages",
                    data: {
                        orderId  : orderId,
                        vin      : $('#selectVin').val().trim(),
                        stage    : ${CodeConstants.ImageStage.PICKUP}
                    },
                    async:false,
                    success:function(result){
                        if(result.listOfPickUpImageUrls.length > 0 || result.listOfDropOffImageUrls.length > 0) {
                            showImagesInSlider(result);
                        } else{
                            console.log("Not found.....");
                            $("#galleryPickUp").empty();
                            $("#galleryPickUp").removeAttr('style');
                            $("#galleryPickUp").append("<label style='color: green;'>No image found.</label>");

                            $("#galleryDropOff").empty();
                            $("#galleryDropOff").removeAttr('style');
                            $("#galleryDropOff").append("<label style='color: green;'>No image found.</label>");
                        }
                    }
                });
            }
        }

        function showImagesInSlider(imageUrlsJSON) {
            pickUpImagesInSlider(imageUrlsJSON.listOfPickUpImageUrls);
            dropOffImagesInSlider(imageUrlsJSON.listOfDropOffImageUrls);
        }

        function pickUpImagesInSlider(pickUpImageUrlsList) {
            var html = "";

            if(pickUpImageUrlsList.length > 0) {
                for(var index = 0; index<pickUpImageUrlsList.length; index++) {
                    %{--var urlString = "<%=request.getContextPath() %>" + pickUpImageUrlsList[index];--}%
                    html = "<img alt='Preview Image 1' src='" + pickUpImageUrlsList[index] + "' data-image='"+ pickUpImageUrlsList[index] + "'>";
                    $("#galleryPickUp").append(html);
                }
                jQuery("#galleryPickUp").unitegallery();
            } else{
                $("#galleryPickUp").empty();
                $("#galleryPickUp").removeAttr('style');
                $("#galleryPickUp").append("<label style='color: green;'>No image found.</label>");
            }
        }

        function dropOffImagesInSlider(dropOffImageUrlsList) {
            var html = "";

            if(dropOffImageUrlsList.length > 0) {
                for(var index = 0; index<dropOffImageUrlsList.length; index++) {
                    %{--var urlString = "<%=request.getContextPath() %>" + dropOffImageUrlsList[index];--}%
                    html = "<img alt='Preview Image 1' src='" + dropOffImageUrlsList[index] + "' data-image='"+ dropOffImageUrlsList[index] + "'>";
                    $("#galleryDropOff").append(html);
                }
                jQuery("#galleryDropOff").unitegallery();
            } else{
                $("#galleryDropOff").empty();
                $("#galleryDropOff").removeAttr('style');
                $("#galleryDropOff").append("<label style='color: green;'>No image found.</label>");
            }
        }
        // Images in slider functionality end

        function getOrderDetails(orderId){

            if(orderId != ''){
                $.ajax({
                    type: "GET",
                    url: "/runbuggy/order/getOrderDetails",
                    data: {orderId: orderId},
                    async:false,
                    success:function(result){
                        console.log(result.basicDetails);
                        if($.isEmptyObject(result.basicDetails)){
                            $('#main-section').hide();
                            $('#orderIdMissingErrorMessage').hide();
                            $('#orderIdErrorMessage').show();
                        }else {
                            $('#main-section').show();
                            $('#orderIdMissingErrorMessage').hide();
                            $('#orderIdErrorMessage').hide();
                            __orderDetails = result.basicDetails;
                            prepareOrderStatusData(result.basicDetails);
                        }
                    }
                });
            }else{
                $('#main-section').hide();
                $('#orderIdMissingErrorMessage').show();
                $('#orderIdErrorMessage').hide();
            }

        }

        function viewOrder(orderId) {
            $.ajax({
                type: "GET",
                url: "/runbuggy/order/getOrderDetails",
                data: {orderId: orderId},
                success:function(result){

                    __orderData = result;

                    // Grab the template script
                    var theTemplateScript = $("#orderDetailsTemplate").html();

                    // Compile the template
                    var theTemplate = Handlebars.compile(theTemplateScript);

                    result.basicDetails.pickupDate = moment(parseInt(result.basicDetails.pickupDate)).tz(moment.tz.guess()).format('MM/DD/YYYY LT z');
                    result.basicDetails.deliveryDate = moment(parseInt(result.basicDetails.deliveryDate)).tz(moment.tz.guess()).format('MM/DD/YYYY LT z');
                    result.basicDetails.createdDate = moment(parseInt(result.basicDetails.createdDate)).tz(moment.tz.guess()).format('MM/DD/YYYY LT z');

                    // Pass our data to the template
                    var theCompiledHtml = theTemplate(result);

                    $('#orderListBlock').hide();

                    $('#orderDetailsBlock').show();

                    // Add the compiled html to the page
                    $('.orderDetails').html(theCompiledHtml);

                    showProgressOnTimeline(result.basicDetails.orderStatus);

                    $('#my-table').dynatable(
                            console.log('Dynatable start.............'),
                            {
                                features: {
                                    perPageSelect: false
                                },
                                dataset: {
                                    perPageDefault: 10
                                }
                            }
                    );
                    $('#dynatable-query-search-my-table').textcounter({
                        type: "digit",
                        max: 10,
                        stopInputAtMaximum: true
                    });

                    $(".text-count-wrapper").hide();

                    var vinList = (result.basicDetails.VINDetails).concat(result.basicDetails.receivingVINDetails);
                    dynamicVinList(vinList,$("#selectVin"));
                }
            });

            counter = 1;
            Handlebars.registerHelper('counter', function() {
                return counter++; //just return global variable value
            });

            Handlebars.registerHelper('shippingDirectionToSending', function() {

                var companyName = __orderData.basicDetails.destinationCompanyName;

                if ((companyName != null) && (companyName != '')) {
                    return companyName;
                } else {
                    return __orderData.basicDetails.destinationAddress;
                }

            });

            Handlebars.registerHelper('shippingDirectionToReceiving', function() {

                var companyName = __orderData.basicDetails.pickupCompanyName;

                if ((companyName != null) && (companyName != '')) {
                    return companyName;
                } else {
                    return __orderData.basicDetails.pickupAddress;
                }

            });

            Handlebars.registerHelper('checkCompanyExistOrNot', function(companyName) {
                if ((companyName != null) && (companyName != '')) {
                    return companyName;
                } else {
                    return "N/A";
                }

            });
        }

        function showProgressOnTimeline(progressPercent){

            switch (progressPercent) {

                case __constants.newOrder:

                    progressBarConfiguration(0, [], []);
                    break;

//                case __constants.rejectedByDestination:
//
//                    progressBarConfiguration(0, [], []);
//                    break;

                case __constants.transporterNotified:

                    progressBarConfiguration(0, [], []);
                    break;

                case __constants.acceptedByTransporter:
                    progressBarConfiguration(1, [], [0]);
                    break;

                case __constants.driverNotified:
                    progressBarConfiguration(1, [], [0]);
                    break;

                case __constants.acceptedByDriver:
                    progressBarConfiguration(1, [], [0]);
                    break;

                case __constants.orderPickedUP  :

                    progressBarConfiguration(2, [], [0,1]);
                    break;

                case __constants.orderInTransit :

                    progressBarConfiguration(3, [], [0,1,2]);
                    break;

                case __constants.orderDelivered:
                case __constants.orderDeliveredInTwoWayTrade :
                case __constants.orderInTransitInTwoWayTrade :
                case __constants.orderPickedUPInTwoWayTrade  :
                    progressBarConfiguration(4, [], [0,1,2,3]);
                    break;

                case __constants.paymentDone:

                    progressBarConfiguration(5, [], [0,1,2,3,4]);
                    break;

            }
        }

        var progressBarConfiguration = function (active, hide, visited) {

            $(".statusInfo").hide();

            $('.checkout-bar').children().eq(active).addClass("active");

            _.each(hide, function(num){ $('.checkout-bar').children().eq(num).hide(); });

            _.each(visited, function(num){ $('.checkout-bar').children().eq(num).addClass("visited"); });

            showTooltipOnProgressBar();
        };

        // Tooltip functionality started...
        function showTooltipOnProgressBar() {

            var contentMessage = '';

            if($("#statusNewOrder").hasClass('visited') || $("#statusNewOrder").hasClass('active')) {

                // New order
                var contentMessageNewOrder = "";

                contentMessageNewOrder = 'Order placed by ' + (__orderDetails.userCompanyName) + ' <font style="color : #0072b7">( ' + moment(__orderDetails.createdDate).fromNow() + ' )</font>'

                var settingsNewOrder = {
                    trigger: 'click',
                    content: contentMessageNewOrder,
                    multi: false,
                    closeable: true,
                    style: '',
                    padding: true,
                    backdrop: false,
                    autoHide: 2000
                };


                $("#statusNewOrder").webuiPopover(settingsNewOrder);
            }

            if($("#statusTransporterAccept").hasClass('visited') || $("#statusTransporterAccept").hasClass('active')) {

                // Transporter Accepted

                contentMessage = '';

                if(__orderDetails.orderStatus == __constants.acceptedByTransporter || __orderDetails.orderStatus == __constants.driverNotified){
                    contentMessage = 'Order accepted by ' + __orderDetails.transporterCompanyName + ' <font style="color : #0072b7">(' + moment(__orderDetails.transporterAcceptanceDate).fromNow() + ' )</font>'
                }else{
                    contentMessage = 'Order accepted by ' + __orderDetails.transporterCompanyName + ' <font style="color : #0072b7">(' + moment(__orderDetails.transporterAcceptanceDate).fromNow() + ' )</font>' +
                            '<br>Order accepted by ' + __orderDetails.driverName + ' <font style="color : #0072b7">(' + moment(__orderDetails.driverAcceptanceDate).fromNow() + ' )</font>'
                }

                var settingsTransporterAccepted = {
                    trigger: 'click',
                    content: contentMessage,
                    multi: false,
                    closeable: true,
                    style: '',
                    padding: true,
                    backdrop: false,
                    autoHide: 2000
                };

                $("#statusTransporterAccept").webuiPopover(settingsTransporterAccepted);
            }

            if($("#statusDriverPickUp").hasClass('visited') || $("#statusDriverPickUp").hasClass('active')) {

                // Driver at Pick up Location

                console.log(__orderDetails.orderStatus);
                contentMessage = '';

                if(__orderDetails.driverPickedupDateInTwoWayTrade){
                    contentMessage = __orderDetails.driverName + ' at first pick up point ' + '<font style="color : #0072b7">(' + moment(__orderDetails.driverPickedupDate).fromNow() + ' )</font>' + '<br>' +
                            __orderDetails.driverName + ' at second pick up point ' + '<font style="color : #0072b7">(' + moment(__orderDetails.driverPickedupDateInTwoWayTrade).fromNow() + ' )</font>'
                }else if(__orderDetails.driverPickedupDate ){
                    contentMessage = __orderDetails.driverName + ' at pick up point ' + '<font style="color : #0072b7">(' + moment(__orderDetails.driverPickedupDate).fromNow() + ' )</font>'
                }

                var settingsDriverPickUp = {
                    trigger: 'click',
                    content: contentMessage,
                    multi: false,
                    closeable: true,
                    style: '',
                    padding: true,
                    backdrop: false,
                    autoHide: 2000
                };

                $("#statusDriverPickUp").webuiPopover(settingsDriverPickUp);
            }

            if($("#statusDriverInTransit").hasClass('visited') || $("#statusDriverInTransit").hasClass('active')) {

                // Driver in Transit
                contentMessage = '';

                if(__orderDetails.driverInTransitDateInTwoWayTrade){
                    contentMessage = __orderDetails.driverName + ' in transit <font style="color : #0072b7">(' + moment(__orderDetails.driverInTransitDate).fromNow() + ' )</font>' + '<br>' +
                            __orderDetails.driverName + ' in transit for return <font style="color : #0072b7">(' + moment(__orderDetails.driverInTransitDateInTwoWayTrade).fromNow() + ' )</font>'
                }else if(__orderDetails.driverInTransitDate){
                    contentMessage = __orderDetails.driverName + ' in transit <font style="color : #0072b7">(' + moment(__orderDetails.driverInTransitDate).fromNow() + ' )</font>'
                }

                var settingsDriverInTransit = {
                    trigger: 'click',
                    content: contentMessage,
                    multi: false,
                    closeable: true,
                    style: '',
                    padding: true,
                    backdrop: false,
                    autoHide: 2000
                };

                $("#statusDriverInTransit").webuiPopover(settingsDriverInTransit);
            }

            if($("#statusDriverDelivered").hasClass('visited') || $("#statusDriverDelivered").hasClass('active')) {

                // Driver Delivered
                contentMessage = '';

                if(__orderDetails.driverDeliveredDateInTwoWayTrade){
                    contentMessage = __orderDetails.driverName + ' delivered the first order <font style="color : #0072b7">(' + moment(__orderDetails.driverDeliveredDate).fromNow() + ' )</font>'+'<br>'+
                            __orderDetails.driverName + ' delivered the second order <font style="color : #0072b7">(' + moment(__orderDetails.driverDeliveredDateInTwoWayTrade).fromNow() + ' )</font>'
                }else if(__orderDetails.driverDeliveredDate){
                    contentMessage = __orderDetails.driverName + ' delivered the order <font style="color : #0072b7">(' + moment(__orderDetails.driverDeliveredDate).fromNow() + ' )</font>'
                }

                var settingsDriverDelivered = {
                    trigger: 'click',
                    content: contentMessage,
                    multi: false,
                    closeable: true,
                    style: '',
                    padding: true,
                    backdrop: false,
                    autoHide: 2000
                };


                $("#statusDriverDelivered").webuiPopover(settingsDriverDelivered);
            }

            if($("#statusPaymentDone").hasClass('visited') || $("#statusPaymentDone").hasClass('active')) {

                // Payment Done
                contentMessage = '';

                var settingsPaymentDone = {
                    trigger: 'click',
                    content: 'Payment done by ' + __orderDetails.paymentByCompanyName,
                    multi: false,
                    closeable: true,
                    style: '',
                    padding: true,
                    backdrop: false,
                    autoHide: 2000
                };
                $("#statusPaymentDone").webuiPopover(settingsPaymentDone);
            }

            //..............................................................................................................................................

        }
        // Tooltip functionality end...

        function prepareOrderStatusData(orderDetails){

            if(orderDetails != []) {

                var orderStatusData = [];
                var pickupOrderMessage = '----';
                var orderInTransitMessage = '----';
                var orderPlaced = {
                    message: 'Order is placed by ' + orderDetails.userCompanyName,
                    date : moment(orderDetails.createdDate).format("MM/DD/YYYY LT"),
                    icon :'icon-archive'
                };

                var transporterNotified = {message: orderDetails.totalTransportersNotified + ' transporters are notified ',date: moment(orderDetails.transportersNotifiedDate).format("MM/DD/YYYY LT"),icon:'icon-bell'};
                var transporterAccepted = {message: 'Order is accepted by ' + orderDetails.transporterCompanyName,date: moment(orderDetails.transporterAcceptanceDate).format("MM/DD/YYYY LT"), icon:'icon-check'};

                if (orderDetails.totalDriversNotified) {

                    var driverNotified = {
                        message: orderDetails.totalDriversNotified + ' drivers are notified',
                        date: moment(orderDetails.driversNotifiedDate).format("MM/DD/YYYY LT"),
                        icon: 'icon-bell'
                    };
                }
                else {
                    var driverNotified = { };
                }
                var driverAccepted = {message: 'Order is accepted by ' + orderDetails.driverName,date: moment(orderDetails.driverAcceptanceDate).format("MM/DD/YYYY LT"), icon:'icon-check'};

                if (orderDetails.orderStatus == __constants.orderPickedUP) {
                    pickupOrderMessage = orderDetails.driverName + ' is at pickup location ';
                }else if (orderDetails.orderStatus == __constants.orderInTransit) {
                    pickupOrderMessage = orderDetails.driverName + ' has picked up order';
                    orderInTransitMessage = 'Order is in transit';
                }else {
                    pickupOrderMessage = orderDetails.driverName + ' has picked up order';
                    orderInTransitMessage = 'Driver route';
                }


                var orderPickedUp = {
                    message: pickupOrderMessage,
                    date: moment(parseInt(orderDetails.driverPickedupDate)).format("MM/DD/YYYY LT"),
                    height: '355',
                    icon:'icon-car'
                };

                var orderInTransit = {
                    message: orderInTransitMessage,
                    date: moment(parseInt(orderDetails.driverInTransitDate)).format("MM/DD/YYYY LT"),
                    height: 355,
                    icon:'icon-truck2'
                };

                var orderDelivered = {
                    message: 'Order is delivered',
                    date: moment(parseInt(orderDetails.driverDeliveredDate)).format("MM/DD/YYYY LT"),
                    height: 355,
                    icon:'icon-flag'
                };

                var paymentDone = {message: 'Payment is done by ' + orderDetails.paymentByCompanyName,icon:'icon-money'};
                var orderCompleted = {message: 'Order is completed',icon:'icon-check-square-o'};

                switch (orderDetails.orderStatus) {
                    case __constants.orderCompleted :
                        orderStatusData.push(orderCompleted);
                    case __constants.paymentDone :
                        orderStatusData.push(paymentDone);
                    case __constants.orderDelivered :
                        orderStatusData.push(orderDelivered);
                    case __constants.orderInTransit :
                        orderStatusData.push(orderInTransit);
                    case __constants.orderPickedUP :
                        orderStatusData.push(orderPickedUp);
                    case __constants.acceptedByDriver :
                        orderStatusData.push(driverAccepted);
                    case __constants.driverNotified :
                        orderStatusData.push(driverNotified);
                    case __constants.acceptedByTransporter :
                        orderStatusData.push(transporterAccepted);
                    case __constants.transporterNotified :
                        orderStatusData.push(transporterNotified);
                    case __constants.newOrder :
                        orderStatusData.push(orderPlaced);
                }

                displayOrderCurrentStatus(orderStatusData);
                showMapOnPerticularState(orderDetails);
            }
        }

        function getLatestLatLong(pickup, dropOff, mapView, orderStatus) {
            $.ajax({
                type: "GET",
                url: "/runbuggy/driver/getDriverLocations",
                data: {orderId: ($('#orderId').val()).trim()},
                async:false,
                success:function(result){
                    console.log(result);
                    showRoute(result, pickup, dropOff, mapView, orderStatus);
                }
            });
        }

        function showMapOnPerticularState(orderDetails){

            showRoute('', orderDetails.pickupAddress, orderDetails.destinationAddress, '#mapView', '');
            if (orderDetails.orderStatus == __constants.orderPickedUP ||  orderDetails.orderStatus == __constants.orderPickedUPInTwoWayTrade) {
                showMarkerOnLoacation(orderDetails.driverPickupLocationLatitude, orderDetails.driverPickupLocationLongitude,'#mapView');
            } else if (_.contains([__constants.orderInTransit, __constants.orderInTransitInTwoWayTrade, __constants.orderDelivered, __constants.orderDeliveredInTwoWayTrade, __constants.paymentDone, __constants.orderCompleted], orderDetails.orderStatus)) {
                setInterval(function(){
                    getLatestLatLong(orderDetails.pickupAddress, orderDetails.destinationAddress, '#mapView', orderDetails.orderStatus);

                },10000);
            }
        }

        function getOrderAcceptedCompanyName(orderDetails){
            if(orderDetails.userCompanyName == orderDetails.pickupCompanyName){
                return orderDetails.destinationCompanyName
            }else{
                return orderDetails.pickupCompanyName
            }
        }

        function getOrderCreatedCompanyName(orderDetails){
            if(orderDetails.createdByUser == "${userData.userName}"){
                return "${userData.additionalInfo.companyName}";
            }else if(!"${userData.userRoles[0]}" == 'ROLE_TRANSPORTER' || !"${userData.userRoles[0]}" == 'ROLE_DRIVER'){
                if(orderDetails.pickupCompanyName != "${userData.additionalInfo.companyName}") {
                    return orderDetails.pickupCompanyName;
                }
                else{
                    return orderDetails.destinationCompanyName;
                }
            }
        }

        function showMarkerOnLoacation(lat,long,mapView){
            var location = {lat: parseFloat(lat), lng: parseFloat(long)};
            var map = new google.maps.Map($(mapView)[0], {
                zoom: 14,
                center: location,

                styles: [
                    {
                        featureType: 'all',
                        stylers: [
                            { saturation: -80 }
                        ]
                    },{
                        featureType: 'road.arterial',
                        elementType: 'geometry',
                        stylers: [
                            { hue: '#00ffee' },
                            { saturation: 50 }
                        ]
                    },{
                        featureType: 'poi.business',
                        elementType: 'labels',
                        stylers: [
                            { visibility: 'off' }
                        ]
                    }
                ]

            });
            var marker = new google.maps.Marker({
                position: location,
                map: map,
                animation:google.maps.Animation.BOUNCE
            });

        }

        function showDriversCurrentLocationOnMap(lat, long, mapView) {

            var location = {lat: parseFloat(lat), lng: parseFloat(long)};

            var carSymbol = {
                path: 'M1682 1497 c-20 -9 -23 -16 -17 -45 3 -18 9 -40 12 -48 4 -12 -27 -14 -208 -14 -118 0 -317 7 -444 15 -384 24 -514 17 -750 -41 -176 -44 -193 -51 -215 -94 -41 -81 -54 -204 -54 -515 0 -311 13 -434 54 -515 22 -43 39 -50 215 -94 236 -58 366 -65 750 -41 127 8 326 15 444 15 181 0 212 -2 208 -14 -3 -8 -9 -30 -12 -48 -6 -30 -3 -36 20 -46 63 -29 113 -7 144 63 l20 45 143 0 c108 0 154 -4 188 -17 64 -23 290 -23 380 1 190 50 317 157 385 325 72 176 72 476 0 652 -68 168 -195 275 -385 325 -90 24 -316 24 -380 1 -34 -13 -80 -17 -188 -17 l-143 0 -20 45 c-11 24 -29 51 -42 60 -25 17 -72 19 -105 2z m78 -37 c10 -5 26 -32 36 -60 l18 -50 165 0 c123 0 179 4 216 16 53 16 216 22 292 10 104 -17 195 -50 245 -89 9 -7 19 -33 22 -57 11 -90 47 -135 146 -180 32 -15 51 -123 51 -295 0 -172 -19 -280 -51 -295 -99 -45 -135 -90 -146 -180 -3 -24 -13 -50 -22 -57 -47 -38 -129 -68 -237 -88 -64 -12 -250 -6 -300 9 -36 12 -95 16 -216 16 l-165 0 -18 -50 c-18 -49 -36 -67 -66 -65 -16 0 -17 18 -5 79 l8 38 -354 -5 c-195 -3 -394 -8 -444 -12 -118 -10 -366 -10 -430 -1 -159 22 -384 81 -402 104 -15 21 -41 136 -48 217 -7 78 -7 502 0 580 7 81 33 196 48 217 18 24 245 83 407 105 62 9 338 9 445 0 39 -3 229 -9 423 -13 389 -7 361 -12 341 59 -14 53 -1 69 41 47z M968 1280 c-72 -12 -130 -41 -158 -80 -12 -16 -20 -30 -18 -31 97 -20 541 -17 655 5 11 3 43 8 70 11 56 8 212 50 261 71 56 23 30 37 -57 30 -93 -8 -408 -9 -574 -2 -67 2 -148 1 -179 -4z M1860 1215 c-133 -29 -151 -36 -183 -75 l-27 -32 0 -353 0 -354 29 -34 c33 -37 63 -48 191 -73 111 -22 157 -21 208 5 140 71 216 367 162 630 -32 155 -87 247 -173 287 -62 28 -71 28 -207 -1z M629 1126 c-2 -2 -29 -7 -59 -10 -215 -25 -251 -52 -299 -223 -24 -88 -24 -188 0 -276 41 -147 80 -188 199 -207 41 -7 82 -14 90 -15 9 -2 41 -6 73 -10 54 -7 58 -6 87 23 l30 30 0 317 0 317 -29 29 c-26 25 -76 39 -92 25z M909 356 c-2 -3 -27 -6 -54 -7 -28 -1 -53 -4 -58 -6 -14 -8 34 -63 71 -82 61 -30 88 -33 307 -30 283 3 258 3 453 -1 95 -1 175 0 179 4 13 13 -189 77 -288 90 -25 4 -57 9 -70 11 -13 2 -42 7 -64 10 -51 8 -469 18 -476 11z',
                fillOpacity: 1,
                strokeWeight: 1.5,
                strokeColor: '#c03b44',
                scale: 0.01
            };

            var map = new google.maps.Map($(mapView)[0], {
                zoom: 14,
                center: location,

                styles: [
                    {
                        featureType: 'all',
                        stylers: [
                            { saturation: -80 }
                        ]
                    },{
                        featureType: 'road.arterial',
                        elementType: 'geometry',
                        stylers: [
                            { hue: '#00ffee' },
                            { saturation: 50 }
                        ]
                    },{
                        featureType: 'poi.business',
                        elementType: 'labels',
                        stylers: [
                            { visibility: 'off' }
                        ]
                    }
                ]

            });
            var marker = new google.maps.Marker({
                position: location,
                map: map,
                icon: carSymbol
            });

        }

        function dynamicVinList(vinList, vinTag) {
            vinTag.empty();
            for (var i = 0; i < vinList.length; i++) {
                var node1 = $("<option></option>");
                $(node1).attr('value', vinList[i].VIN);
                $(node1).text(vinList[i].VIN);
                vinTag.append(node1);
            }
            vinTag.trigger("chosen:updated");

            fetchImageUrl($('#orderId').val().trim());
        }

        //  handelBar to display order status
        function displayOrderCurrentStatus(orderDetails){
            $('.main-section').show();
            $('#orderIdErrorMessage').hide();
            var theTemplateScript = $("#orderStatus").html();

            // Compile the template
            var theTemplate = Handlebars.compile(theTemplateScript);

            // This is the default context, which is passed to the template
            var context = {
                orderStatusData : orderDetails
            };

            // Pass our data to the template
            var theCompiledHtml = theTemplate(context);

            // Add the compiled html to the page
            $('#cd-timeline').append(theCompiledHtml);
        }

        function showRoute(wayPoints, pickup, dropOff, mapView, orderStatus) {

            //*********DIRECTIONS AND ROUTE**********************//
            if(firstTimeInvocation) {

                var mapOptions = {
                    zoom: 8,

                    styles: [
                        {
                            featureType: 'all',
                            stylers: [
                                { saturation: -80 }
                            ]
                        },{
                            featureType: 'road.arterial',
                            elementType: 'geometry',
                            stylers: [
                                { hue: '#00ffee' },
                                { saturation: 50 }
                            ]
                        },{
                            featureType: 'poi.business',
                            elementType: 'labels',
                            stylers: [
                                { visibility: 'off' }
                            ]
                        }
                    ]

                };
//
                map = new google.maps.Map($(mapView)[0], mapOptions);
                directionsDisplay.setMap(map);

                var request = {
                    origin: pickup,
                    destination: dropOff,
                    travelMode: google.maps.TravelMode.DRIVING
                };

                directionsService.route(request, function (response, status) {
                    if (status == google.maps.DirectionsStatus.OK) {
                        directionsDisplay.setDirections(response);
                        firstTimeInvocation = false;
                        directionsDisplay.setDirections(response);
                        directionsDisplay.setOptions({suppressMarkers: true});
                        var leg = response.routes[0].legs[0];
                        directionsDisplay = makeMarker(leg.start_location, __markerIcons.pickupLocation, pickup);
                        directionsDisplay = makeMarker(leg.end_location, __markerIcons.dropOffLocation, dropOff);
                    }
                });

                google.maps.event.addDomListener(document.getElementById('recenter'), 'click', function () {
                    map.setCenter({
                        lat: parseFloat(__orderDetails.pickupAddressLatitude),
                        lng: parseFloat(__orderDetails.pickupAddressLongitude)
                    });
                });


            } else if (orderStatus != '' && _.contains([__constants.orderDelivered, __constants.orderDeliveredInTwoWayTrade, __constants.paymentDone, __constants.orderCompleted], orderStatus)) {

                if(driverRoute) {
                    driverRoute.setMap(null);
                }

                var lineSymbol = {
                    path: google.maps.SymbolPath.FORWARD_CLOSED_ARROW
                };

                // Create the polyline and add the symbol to it via the 'icons' property.
                driverRoute = new google.maps.Polyline({
                    path: wayPoints,
                    icons: [{
                        icon: lineSymbol,
                        offset: '100%'
                    }],
                    strokeColor: '#c03b44',
                    strokeOpacity: 1.0,
                    strokeWeight: 4,
                    map: map
                });
            } else {

                var latitude = wayPoints[wayPoints.length - 1].lat;
                var longitude = wayPoints[wayPoints.length - 1].lng;
                var location = {lat: parseFloat(latitude), lng: parseFloat(longitude)};

                var carSymbol = {
                    path: 'M1682 1497 c-20 -9 -23 -16 -17 -45 3 -18 9 -40 12 -48 4 -12 -27 -14 -208 -14 -118 0 -317 7 -444 15 -384 24 -514 17 -750 -41 -176 -44 -193 -51 -215 -94 -41 -81 -54 -204 -54 -515 0 -311 13 -434 54 -515 22 -43 39 -50 215 -94 236 -58 366 -65 750 -41 127 8 326 15 444 15 181 0 212 -2 208 -14 -3 -8 -9 -30 -12 -48 -6 -30 -3 -36 20 -46 63 -29 113 -7 144 63 l20 45 143 0 c108 0 154 -4 188 -17 64 -23 290 -23 380 1 190 50 317 157 385 325 72 176 72 476 0 652 -68 168 -195 275 -385 325 -90 24 -316 24 -380 1 -34 -13 -80 -17 -188 -17 l-143 0 -20 45 c-11 24 -29 51 -42 60 -25 17 -72 19 -105 2z m78 -37 c10 -5 26 -32 36 -60 l18 -50 165 0 c123 0 179 4 216 16 53 16 216 22 292 10 104 -17 195 -50 245 -89 9 -7 19 -33 22 -57 11 -90 47 -135 146 -180 32 -15 51 -123 51 -295 0 -172 -19 -280 -51 -295 -99 -45 -135 -90 -146 -180 -3 -24 -13 -50 -22 -57 -47 -38 -129 -68 -237 -88 -64 -12 -250 -6 -300 9 -36 12 -95 16 -216 16 l-165 0 -18 -50 c-18 -49 -36 -67 -66 -65 -16 0 -17 18 -5 79 l8 38 -354 -5 c-195 -3 -394 -8 -444 -12 -118 -10 -366 -10 -430 -1 -159 22 -384 81 -402 104 -15 21 -41 136 -48 217 -7 78 -7 502 0 580 7 81 33 196 48 217 18 24 245 83 407 105 62 9 338 9 445 0 39 -3 229 -9 423 -13 389 -7 361 -12 341 59 -14 53 -1 69 41 47z M968 1280 c-72 -12 -130 -41 -158 -80 -12 -16 -20 -30 -18 -31 97 -20 541 -17 655 5 11 3 43 8 70 11 56 8 212 50 261 71 56 23 30 37 -57 30 -93 -8 -408 -9 -574 -2 -67 2 -148 1 -179 -4z M1860 1215 c-133 -29 -151 -36 -183 -75 l-27 -32 0 -353 0 -354 29 -34 c33 -37 63 -48 191 -73 111 -22 157 -21 208 5 140 71 216 367 162 630 -32 155 -87 247 -173 287 -62 28 -71 28 -207 -1z M629 1126 c-2 -2 -29 -7 -59 -10 -215 -25 -251 -52 -299 -223 -24 -88 -24 -188 0 -276 41 -147 80 -188 199 -207 41 -7 82 -14 90 -15 9 -2 41 -6 73 -10 54 -7 58 -6 87 23 l30 30 0 317 0 317 -29 29 c-26 25 -76 39 -92 25z M909 356 c-2 -3 -27 -6 -54 -7 -28 -1 -53 -4 -58 -6 -14 -8 34 -63 71 -82 61 -30 88 -33 307 -30 283 3 258 3 453 -1 95 -1 175 0 179 4 13 13 -189 77 -288 90 -25 4 -57 9 -70 11 -13 2 -42 7 -64 10 -51 8 -469 18 -476 11z',
                    fillOpacity: 1,
                    strokeWeight: 1.5,
                    strokeColor: '#c03b44',
                    scale: 0.01
                };

                if (driverCurrentLocation) {
                    driverCurrentLocation.setMap(null)
                }

                driverCurrentLocation = new google.maps.Marker({
                    position: location,
                    map: map,
                    icon: carSymbol
                });
            }
        }

        function makeMarker(position, icon, address) {
            var infoWindow = new google.maps.InfoWindow();
            var marker = new google.maps.Marker({
                position: position,
                map: map,
                icon: icon
            });

            google.maps.event.addListener(marker, 'click', (function (marker) {
                return function () {
                    infoWindow.setContent(address);
                    infoWindow.open(map, marker);
                }
            })(marker));

            return marker

        }


        function autoTrackOrder(){
            if("${orderId}"){
                $('#orderId').val("${orderId}");
                getOrderDetails("${orderId}");
            }
        }

    </script>
    %{--custome script ends here--}%

    <!---handlebar scripts starts here--->
    <script id="orderStatus" type="text/x-handlebars-template">
    {{#each orderStatusData}}
    {{#if message}}
    <div class="cd-timeline-block">
        <div class="cd-timeline-img cd-movie"><i class={{icon}}></i></div>
        <!--State - Order is placed -->
        <div class="cd-timeline-content">
            <h5>{{message}}</h5>
            {{#if showMapForPickupLocation}}
            <div id="pickupLocationMapDiv"></div>
            {{else if showMapForDriverRoute}}
            <div id="driverRouteMapDiv"></div>
            {{else if showMapForDeliveryLocation}}
            <div id="deliveryLocationMapDiv"></div>
            {{/if}}

            <span class="cd-date">{{date}}</span>
        </div>
    </div>
    {{/if}}
    {{/each}}
    </script>
    <!---handlebar scripts ends here--->

    %{--Handlebar script starts here--}%
    <script id="orderDetailsTemplate" type="text/x-handlebars-template">

    <!--Order box starts here-->
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

            <div class="cs-agent-listing">
                <div class="auto-specifications mar_b_10">
                    <div class="cs-post-title mar_b_25">
                        <h6>
                            <a href="#" class="cs-color">Basic details</a>
                            <strong style="color: #ff0000;font-size: 12px;font-weight: 700;text-transform: uppercase;"> ( {{basicDetails.orderET}} )</strong>
                        </h6>
                        <span><a href="javascript:void(0)" class="cs-color pull-right" data-toggle="collapse" data-target="#basic-view" aria-expanded="false" id="first">
                        </a></span>
                    </div>
                    <div id="basic-view" class="collapse in" aria-expanded="false">
                        <div class="col-md-6 col-lg-6 col-sm-6 col-xs-6 pad_all_0">
                            <div class="specifications-info">
                                <ul>

                                    <li>
                                        <span>
                                            <i class="icon-building-o mar_r_10" style="font-size: 12px; color: #0072b7;margin-right: 15px !important; margin-left: 2px"></i>
                                            Source
                                        </span>
                                        <strong>{{#checkCompanyExistOrNot basicDetails.pickupCompanyName}}{{/checkCompanyExistOrNot}}</strong>
                                    </li>

                                    <li>
                                        <span>
                                            <img src="<%=request.getContextPath() %>/images/Blue_Icons/Pick Up-Blue.png" class="image-icon mar_r_10">
                                            Pick up
                                        </span>
                                        <strong>{{basicDetails.pickupAddress}}</strong>
                                    </li>

                                    <li>
                                        <span>
                                            <i class="icon-shopping-cart mar_r_10 cs-color-blue" style="font-size: 12px;margin-right: 13px !important; margin-left: 2px"></i>
                                            Payer
                                        </span>
                                        <strong>{{#checkCompanyExistOrNot basicDetails.paymentByCompanyName}}{{/checkCompanyExistOrNot}}</strong>
                                    </li>

                                    <li>
                                        <span>
                                            <img src="<%=request.getContextPath() %>/images/Blue_Icons/Miles-Blue.png" class="image-icon mar_r_10">
                                            Distance
                                        </span>
                                        <strong>{{basicDetails.distance}}.</strong>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-6 col-sm-6 col-xs-6">
                            <div class="specifications-info destination-info">
                                <ul>
                                    <li>
                                        <span>
                                            <i class="icon-building-o mar_r_10" style="font-size: 12px; color: #0072b7;margin-right: 15px !important; margin-left: 2px"></i>
                                            Destination
                                        </span>
                                        <strong>{{#checkCompanyExistOrNot basicDetails.destinationCompanyName}}{{/checkCompanyExistOrNot}}</strong>
                                    </li>
                                    <li>
                                        <span>
                                            <img src="<%=request.getContextPath() %>/images/Blue_Icons/Drop Off-Blue.png" class="image-icon mar_r_10">
                                            Drop off
                                        </span>
                                        <strong>{{basicDetails.destinationAddress}}</strong>
                                    </li>
                                    <li>
                                        <span><i class="icon-calendar mar_r_10 cs-color-blue" style="font-size: 12px;margin-right: 13px !important; margin-left: 2px"></i> Created Date</span>
                                        <strong>{{basicDetails.createdDate}}</strong>
                                    </li>
                                    <li>
                                        <span>
                                            <img src="<%=request.getContextPath() %>/images/Blue_Icons/Amount-Blue.png" class="image-icon mar_r_10">
                                            Fare
                                        </span>
                                        <strong><i class="icon-usd"></i> {{basicDetails.totalFare}}</strong>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="cs-post-title mar_b_25">
                    <h6><a href="#" class="cs-color">VIN details</a></h6>
                    <span>
                        <a href="javascript:void(0)" class="cs-color pull-right" data-toggle="collapse" data-target="#list-view" aria-expanded="false"> </a>
                    </span>
                </div>
                <div></div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 auto-listing pad_all_0 mar_all_0">
                    <div id="list-view" class="collapse in" aria-expanded="false">
                        <div class="btn-list dynatable-demo">
                            <table id="my-table" class="table table-bordered vin-table">
                                <thead>
                                <tr>
                                    <th>Sr. No</th>
                                    <th>VIN</th>
                                    <th>Model</th>
                                    <th>Type</th>
                                    <th>Year</th>
                                    <th>Shipping To</th>
                                </tr>
                                </thead>
                                <tbody>

                                {{#if basicDetails.isTwoWayTrade}}

                                {{#each basicDetails.VINDetails}}
                                <tr>
                                    <td>{{counter}}</td>
                                    <td>{{VIN}}</td>
                                    <td>{{model}}</td>
                                    <td>{{make}}</td>
                                    <td>{{year}}</td>
                                    <td>{{#shippingDirectionToSending}}{{/shippingDirectionToSending}}</td>
                                </tr>
                                {{/each}}

                                {{#each basicDetails.receivingVINDetails}}
                                <tr>
                                    <td>{{counter}}</td>
                                    <td>{{VIN}}</td>
                                    <td>{{model}}</td>
                                    <td>{{make}}</td>
                                    <td>{{year}}</td>
                                    <td>{{#shippingDirectionToReceiving}}{{/shippingDirectionToReceiving}}</td>
                                </tr>
                                {{/each}}

                                {{else}}

                                {{#each basicDetails.VINDetails}}
                                <tr>
                                    <td>{{counter}}</td>
                                    <td>{{VIN}}</td>
                                    <td>{{model}}</td>
                                    <td>{{make}}</td>
                                    <td>{{year}}</td>
                                    <td>{{#shippingDirectionToSending}}{{/shippingDirectionToSending}}</td>
                                </tr>
                                {{/each}}

                                {{/if}}
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!--START TIMELINE FOR STATUS-->
                <div class="cs-post-title">
                    <h6><a href="#" class="cs-color">Order status</a></h6>
                    <span><a href="javascript:void(0)" class="cs-color pull-right" data-toggle="collapse" data-target="#status-view" aria-expanded="false"> </a>
                    </span>
                </div>
                <div class="auto-listing pad_all_0">
                    <div id="status-view" class="collapse in" aria-expanded="false">
                        <div class="checkout-wrap">
                            <ul class="checkout-bar">

                                <li class="" id="statusNewOrder">
                                    <label>New order</label>
                                </li>

                                <li class="" id="statusTransporterAccept">
                                    <label>Accepted by Transporter</label>
                                </li>

                                <li class="" id="statusDriverPickUp">
                                    <label>Driver at pick up point</label>
                                </li>

                                <li class="" id="statusDriverInTransit">
                                    <label>Driver In Transit</label>
                                </li>

                                <li class="" id="statusDriverDelivered">
                                    <label>Driver at drop off point</label>
                                </li>

                                <li class="" id="statusPaymentDone">
                                    <label>Payment Done</label>
                                </li>

                            </ul>
                        </div>
                    </div>
                </div>
                <!--END TIMELINE FOR STATUS-->
            </div>
        </div>
    </div>
    <!--Order box ends here-->
    </script>
    %{--Handlebar script ends here--}%

</head>
<body class="wp-automobile single-page track-order" onload="autoTrackOrder()">

<sec:ifAnyGranted roles='ROLE_DEALER,ROLE_AUCTION_HOUSE'>
    <!--START MENU TEMPLATE-->
    <g:render template="../include/dealer/menu"/>
    <!--END MENU TEMPLATE-->
</sec:ifAnyGranted>
<sec:ifAnyGranted roles='ROLE_TRANSPORTER'>
    <!--START MENU TEMPLATE-->
    <g:render template="../include/transporter/menu"/>
    <!--END MENU TEMPLATE-->
</sec:ifAnyGranted>

<div class="wrapper">
    <div id="mapView" style="width: 101% !important;" class="col-md-12 custom-height pre-scrollable">
        <div id="orderStatusMap" class="custom-height-for-map"></div>
    </div>

    <div id="trackView" class="custom-height pre-scrollable">
        <input type="hidden" id="orderId" placeholder="Enter order ID" >
        <div class="main-section" id="main-section" style="margin-top: 0px; padding: 0px;">
            <section id="cd-timeline" class="cd-container">
            </section>
        </div>
    </div>

    <!--START ORDER DETAILS BLOCK--->
    <div class="row custom-height pre-scrollable" id="summaryView" style="padding-top: 10px !important;">
        <!--Order box starts here-->
        <div class="col-md-2 col-lg-2 col-sm-8 col-xs-8"></div>
        <div class="col-md-8 col-lg-8 col-sm-8 col-xs-8 orderDetails"></div>
        <div class="col-md-2 col-lg-2 col-sm-8 col-xs-8"></div>
        <!--Order box ends here-->
    </div>
    <!--END ORDER DETAILS BLOCK--->

    <div id="galleryView" class="custom-height pre-scrollable" style="padding-top: 10px !important;">
        <div class="cs-field-holder mar_b_25" style="margin-left: 35%; margin-top: 75px;">
            <div class="col-lg-1 col-md-1 col-sm-12 col-xs-12" style=" margin-top: 10px;">
                <h6><span class="cs-color">VIN : </span></h6>
            </div>

            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <div class="cs-field ">
                    <select data-placeholder="Select VIN"
                            name="selectVin" id="selectVin"
                            tabindex="1"
                            class="chosen-select form-control">

                    </select>
                </div>
            </div>
        </div>

        <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12" style="margin-left: 5%; margin-top: 60px">
            <h6><a href="#" class="cs-color">Pick up Images : </a></h6>

            <div id="galleryPickUp" style="display: none;"></div>
        </div>

        <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12" style="margin-left: 5%; margin-top: 60px">
            <h6><a href="#" class="cs-color">Drop Off Images : </a></h6>

            <div id="galleryDropOff" style="display: none;"></div>
        </div>
    </div>

    <div class="floating-container track-order-floating-container">
        <button class="krx-button " id="btn-map" data-toggle="tooltip" data-placement="top" title="Map View">
            <i class="icon-location-arrow" style="color: #0072b7;"></i>
            <span class="cs-color-blue"></span>
        </button>

        <button class="krx-button " id="btn-summary" data-toggle="tooltip" data-placement="top" title="Summary View">
            <i class="icon-info-circle" style="color: #0072b7;"></i>
            <span class="cs-color-blue"></span>
        </button>

        <button class="krx-button " id="btn-gallery" data-toggle="tooltip" data-placement="top" title="Gallery View">
            <i class="icon-picture-o" style="color: #0072b7;"></i>
            <span class="cs-color-blue"></span>
        </button>
    </div>

    <div class="mfb-component--br track-order-mfb-component--br mfb-slidein">
        <button id="recenter" style="margin-bottom: 48px!important; margin-right: 33px!important;" class="mfb-component__button--main" data-toggle="tooltip" data-placement="top"
                title="Re-center">
            <i class="fa fa-crosshairs" aria-hidden="true"></i>
        </button>
    </div>

</div>


<!--START MENU TEMPLATE-->
<g:render template="../include/footer"/>
<!--END MENU TEMPLATE-->

</body>
</html>
