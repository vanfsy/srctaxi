$(document).ready(function() {
    // Sidebar Menu JS
    $(".burger-menu").click(function() {
        $("body").addClass("active");
        $(".bg-blur").addClass("active");
        $(".fixed-sidebar").addClass("active");
    });
    $(".fixed-sidebar-close").click(function() {
        $(".bg-blur").removeClass("active");
        $("body").removeClass("active");
        $(".fixed-sidebar").removeClass("active");
    });
    // Mobile Menu Listing JS
    $(".mobile-menu-listing > li > a").click(function() {
        $(".mobile-menu-listing > li > a").parent().removeClass("active");
        $(this).parent().addClass("active");
        $(this).next().slideToggle();
    });

    $('#prefSelect').change(function () {
        var pref_val = $(this).val();

        var prefCitiesStr = $('#prefCities').val();
        var prefCities = JSON.parse(prefCitiesStr);

        var cities = prefCities[pref_val];

        var html = '<option value>全て</option>';
        // var html = '';
        for (var ind in cities) {
            var city = cities[ind];
            html += '<option value="' + city['id'] + '">';
            html += city['name'];
            html += '</option>';
        }

        $('#citySelect').html(html);

        ajaxNumbers();
    });

    // $('#prefSelect2').change(function () {
    //     $('#articleForm').submit();
    // });
    //
    // $('#citySelect2').change(function () {
    //     $('#articleForm').submit();
    // });
    //
    $('#articleForm .interview-content-checkbox-input').click(function () {
        ajaxNumbers();
    })

    $('#articleForm .form-cotrol-free-word').change(function () {
        ajaxNumbers();
    })


});
// Disabled Keyboard Events
// document.onkeydown = function (e) {
//   return false;
// }
// Disbaled Right Click
// window.oncontextmenu = function () {
//   return false;
// }

function ajaxNumbers() {
    $form = $('#articleForm');
    $.ajax({
        type: 'POST',
        url: '/article/ajaxNumbers',
        data: $form.serialize(),
        success: function (data) {
            var success = data['success'];
            if (success) {
                $('#article_number').text(data['count']);
            }
        }
    });
}
