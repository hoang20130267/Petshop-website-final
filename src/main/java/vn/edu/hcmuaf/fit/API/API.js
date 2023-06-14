function showTable() {
    document.getElementById("myTable").style.display = "block";
    document.getElementById("overlayT").classList.add("show");
    const host = "https://provinces.open-api.vn/api/";
    var callAPI = (api) => {
        return axios.get(api)
            .then((response) => {
                renderData(response.data, "province");
                console.log(response.data);
            });
    }
    callAPI('https://provinces.open-api.vn/api/?depth=1');
    var callApiDistrict = (api) => {
        return axios.get(api)
            .then((response) => {
                renderData(response.data.districts, "district");
            });
    }
    var callApiWard = (api) => {
        return axios.get(api)
            .then((response) => {
                renderData(response.data.wards, "ward");
            });
    }

    function renderData(array, select) {
        switch (select) {
            case "province":
                for (const item of array) {
                    const option = new Option(item.name, item.code);
                    document.getElementById("province").add(option);
                }
                break;

            case "district":
                for (const item of array) {
                    const option = new Option(item.name, item.code);
                    document.getElementById("district").add(option);
                }
                break;

            case "ward":
                for (const item of array) {
                    const option = new Option(item.name, item.code);
                    document.getElementById("ward").add(option);
                }
                break;

            default:
                console.log("Invalid select value.");
        }
    }

    $("#province").change(() => {
        callApiDistrict(host + "p/" + $("#province").val() + "?depth=2");
    });
    $("#district").change(() => {
        callApiWard(host + "d/" + $("#district").val() + "?depth=2");
    });
}
function hideTable() {
    document.getElementById("myTable").style.display = "none";
    document.getElementById("overlayT").classList.remove("show");
    document.getElementById("error").innerHTML = "";
}

var soNha = document.getElementById("soNha").value;
function validateInput() {
    if ($("#district").val() != "" && $("#province").val() != "" &&
        $("#ward").val() != "" && $("#soNha").val() != "") {
        document.getElementById("address").value  = $("#soNha").val() + ", " + $("#ward option:selected").text() +
            ", " + $("#district option:selected").text() + ", " +
            $("#province option:selected").text();
        hideTable();
    }
    else {
        document.getElementById('error').innerHTML = 'Vui lòng chọn đủ thông tin địa chỉ';
    }
}