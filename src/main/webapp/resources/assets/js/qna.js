$(".file-btn").on("click", function(){
	$(this).prev().click();
});

$("#qna-submit-btn").on("click", function(){
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

// 첨부파일 담을 배열
const files = new Array();

function loadfile(nf){
	
	// input file로 선택한 파일들을 배열에 넣음
	for(let i=0; i<nf.files.length; i++) {
		files.push(nf.files[i]);
	}
	
	// 기존에 있던 파일들 다 지움
	$(".fileZone").find(".fileName").remove();
	
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
	fileSetting();
}

//첨부한 파일 삭제
function deleteFile(obj){
	// 삭제할 파일 이름 찾기
	const deleteFilename = $(obj).prev().text();
	
	for(let i=0; i<files.length; i++){
		if(files[i].name == deleteFilename){
			files.splice(i,1);
			break;
		}
	}
    $(obj).parent().remove();
    fileSetting();
}

function fileSetting(){
    //input[type=file] value는 보안상 변경이 불가능
	//input[type=file] 변경용 객체 필요
	const dataTransfer = new DataTransfer();
	for(let i=0; i<files.length; i++){
		dataTransfer.items.add(files[i]);
	}
    $("#qnaFile").prop("files",dataTransfer.files);
}