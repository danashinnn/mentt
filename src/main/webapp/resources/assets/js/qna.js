$(".file-btn").on("click", function(){
	$(this).prev().click();
});

const files = new Array();

function loadfile(nf){
	let files = nf.files;
	for(let i=0; i<files.length; i++){
		console.log(files[i].name);
		const fileNameDiv = $("<div>");
    	fileNameDiv.addClass("fileName");
    	const fileNameSpan = $("<span>");
		fileNameSpan.text(files[i].name);
		const closeBtn = $("<span>");
    	closeBtn.addClass("closeBtn");
    	closeBtn.html("   <i class='fa-solid fa-xmark'></i>");
    	closeBtn.attr("onclick","deleteFile(this)");
		fileNameDiv.append(fileNameSpan).append(closeBtn);
    	$(".fileZone").append(fileNameDiv);
	}
}

//첨부한 파일 취소  
function deleteFile(obj){
	const deleteFilename = $(obj).prev().text();
	for(let i=0; i<files.length; i++){
		if(files[i].name == deleteFilename){
			files.splice(i,1);
			break;
		}
	}
    $(obj).parent().remove();
    fileSetting(files);
}

function fileSetting(files){
    //input[type=file] value는 보안상 변경이 불가능
	//input[type=file] 변경용 객체 필요
	const dataTransfer = new DataTransfer();
	for(let i=0; i<files.length; i++){
		dataTransfer.items.add(files[i]);
	}
    $("#qnaFile").prop("files",dataTransfer.files);
}

$(".qna-btn").on("click", function(){
	if($("#qnaTitle").val() == "") {
		Swal.fire({
			text: '제목을 입력해주세요.',
			confirmButtonColor: '#5fcf80'
		})
		return;
	} else if($("#qnaContent").val() == "") {
		Swal.fire({
			text: '내용을 입력해주세요.',
			confirmButtonColor: '#5fcf80'
		})
		return;
	} else {
		Swal.fire({
	        title: 'Q&A 등록',
	        text: "게시물을 등록하시겠습니까?",
	        icon: 'warning',
	        showCancelButton: true,
	        confirmButtonColor: '#5fcf80',
	        cancelButtonColor: '#ccc',
	        confirmButtonText: '등록',
	        cancelButtonText: '취소'
	    }).then((result) => {
	        if (result.isConfirmed) {
	        	$("#qnaWriteFrm").submit();
	        }
	    })
	}	
});