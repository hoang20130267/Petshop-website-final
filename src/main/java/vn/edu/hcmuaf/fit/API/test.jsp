<!DOCTYPE html>
<html>
<head>
    <style>
        #myTable {
            display: none;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: white;
            padding: 20px;
            border: 1px solid black;
            z-index: 1;
            box-shadow: 0px 0px 5px 5px rgba(0,0,0,0.3);
        }
        #myTable label {
            display: inline-block;
            width: 85px;
        }
        .overlayT {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            opacity: 0;
            visibility: hidden;
            z-index: 0;
            transition: opacity 0.5s ease;
        }
        .overlayT.show {
            opacity: 1;
            visibility: visible;
        }
        select.pdw {
            min-width: 162px;
        }
    </style>
</head>
<body>
<label>Số nhà:</label>
<input type="text" id="address">
<button onclick="showTable()">Chỉnh sửa địa chỉ</button>
<div id="myTable">
    <label>Số nhà:</label>
    <input type="text" id="soNha"><br><br>

    <label>Tỉnh/TP:</label>
    <select id="province" class="pdw">
        <option value="">Tỉnh/Thành phố</option>
    </select><br><br>

    <label>Quận/Huyện:</label>
    <select id="district" class="pdw">
        <option value="">Quận/Huyện</option>

    </select><br><br>

    <label>Phường/Xã:</label>
    <select id="ward" class="pdw">
        <option value="">Phường/xã</option>

    </select><br><br>
    <div id="error" style="text-align: center; color: red"> </div>
    <button onclick="hideTable()" class="bt2">Hủy</button>
    <button onclick="validateInput()" class="bt2">Cập nhật</button>


</div>

<!-- <div class="overlayT" onclick="hideTable()" id="overlayT"></div> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.26.1/axios.min.js" integrity="sha512-bPh3uwgU5qEMipS/VOmRqynnMXGGSRv+72H/N260MQeXZIK4PG48401Bsby9Nq5P5fz7hy5UGNmC/W1Z51h2GQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script>
    const provinces = document.getElementById("province");
    const districts = document.getElementById("district");
    const wards = document.getElementById("ward");


    const host = "https://provinces.open-api.vn/api/";
    var callAPI = (api) => {
        return axios.get(api)
            .then((response) => {
                renderData(response.data, "province");
            });
    }

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
    // var renderData = (array, select) => {
    //     let selectTag = document.querySelector("#" + select);
    //     selectTag.innerHTML = '<option value="">chọn</option>';
    //     array.forEach(element => {
    //         let option = new Option(element.name, element.code);
    //         selectTag.add(option);
    //     });
    // }

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
    // var renderData = (array, select) => {
    //     let row = ' <option disable value="">chọn</option>';
    //     array.forEach(element => {
    //         row += `<option value="${element.code}">${element.name}</option>`
    //     });
    //     document.querySelector("#" + select).innerHTML = row
    // }
    $("#province").change(() => {
        callApiDistrict(host + "p/" + $("#province").val() + "?depth=2");
    });
    $("#district").change(() => {
        callApiWard(host + "d/" + $("#district").val() + "?depth=2");
    });
    function showTable() {
        document.getElementById("myTable").style.display = "block";
        document.getElementById("overlayT").classList.add("show");
        callAPI('https://provinces.open-api.vn/api/?depth=1');
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

</script>
</body>
</html>

<!--
// var renderData = (array, select) => {
//     let row = ' <option disable value="">chọn</option>';
//     array.forEach(element => {
//         row += '<option value="' + element.code + '">' + element.name + '</option>';
//     });
//     document.querySelector("#" + select).innerHTML = row;
// } -->