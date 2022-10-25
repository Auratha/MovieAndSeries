$(document).ready(()=>{
    let itemSeries = document.querySelectorAll('#serie-pagination-item');
    let serieItemCount = $('#series-page').children().length;

function pagination(itemType,itemCountForWho){

let itemtype = itemType;
let itemCount = itemCountForWho;
let currentPage;
let itemEachPage = 12;
let pageCount = Math.ceil(itemCount/itemEachPage);

for(let page=0;page<pageCount;page++){
    if(page===0){
        $('#pagination-num').append("<button class='pagination-num active'>"+(page+1)+"</button>");
    }else{
        $('#pagination-num').append("<button class='pagination-num'>"+(page+1)+"</button>")
    }

}

const setCurrentPage = (pageNum) => {
    currentPage = pageNum;
    
    const prevRange = (pageNum - 1) * itemEachPage;
    const currRange = pageNum * itemEachPage;
    itemtype.forEach((item, index) => {
      $(item).hide();
      if (index >= prevRange && index < currRange) {
        $(item).show();
      }
    });

    currentPage===1 ? $('#prev-button').hide() : $('#prev-button').show();
    
    currentPage===pageCount ? $('#next-button').hide() : $('#next-button').show();
    
};

setCurrentPage(1);

let pagiNumButton = document.querySelectorAll('.pagination-num');
$(pagiNumButton).click((e)=>{
    let pageNum = e.target.innerText;
    setCurrentPage(parseInt(pageNum));
    pagiNumButton.forEach((button)=>{
        $(button).removeClass('active');
    })
    $(e.target).addClass('active');
})

$('#prev-button').click(()=>{
    $(pagiNumButton[currentPage-1]).removeClass('active');
    setCurrentPage(currentPage-1);
    $(pagiNumButton[currentPage-1]).addClass('active');
})

$('#next-button').click(()=>{
    $(pagiNumButton[currentPage-1]).removeClass('active');
    setCurrentPage(currentPage+1);
    $(pagiNumButton[currentPage-1]).addClass('active');
})
}


pagination(itemSeries,serieItemCount);

})
