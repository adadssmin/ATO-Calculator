let date = new Date();

const renderCalendar = () => {
	const viewYear = date.getFullYear();
	const viewMonth = date.getMonth();
	
	document.querySelector('.year-month').textContent = `${viewYear}년 ${viewMonth + 1}월`;
	
	//Date 객체를 생성할 때 마지막에 0을 붙여주면 지난달의 마지막 날의 Date객체가 생성됨
	//다음달(+ 1)에 0을 해주면 이번달 Date 객체가 생성됨
	const prevLast = new Date(viewYear, viewMonth, 0);
	const thisLast = new Date(viewYear, viewMonth + 1, 0);
	
	//지난달 마지막 날짜, 요일
	const PLDate = prevLast.getDate();
	const PLDay = prevLast.getDay();
	
	//이번달 마지막 날짜, 요일
	const TLDate = thisLast.getDate();
	const TLDay = thisLast.getDay();
	
	const prevDates = [];
	//Array(n) 하면 길이가 n인 배열 생성
	//keys() 하면 0부터 n-1까지 배열 Iterator 생성
	//slice(1) 하면 배열의 인덱스 1 부터 시작
	//따라서 thisDates는 1일부터 이번달 마지막 날짜까지 결과가 나옴
	const thisDates = [...Array(TLDate + 1).keys()].slice(1);
	const nextDates = [];
	
	//unshift() 메서드는 새로운 요소를 배열의 맨 앞쪽에 추가하고, 새로운 길이를 반환
	//마지막날 토요일까지(6)
	if (PLDay != 6) {
		for (let i = 0; i < PLDay + 1; i++) {
			prevDates.unshift(PLDate - i);
		}
	}
	
	for (let i = 1; i < 7 - TLDay; i++) {
		nextDates.push(i);
	}
	
	//concat으로 배열 3개 모두 합침
	const dates = prevDates.concat(thisDates, nextDates);
	
	const firstDateIndex = dates.indexOf(1);
	const lastDateIndex = dates.lastIndexOf(TLDate);
	dates.forEach((date, i) => {
		const condition = i >= firstDateIndex && i < lastDateIndex + 1
                      ? 'this' : 'other';
		if (condition == 'this') {
			dates[i] = `<button class="date" value="${viewMonth + 1}월 ${date}일" onclick="dateClick(this.value)"><span class="${condition}">${date}</span></button>`;
		} else if (condition == 'other') {
			if (date > 7) {
				dates[i] = `<button class="date" value="${viewMonth}월 ${date}일" onclick="dateClick(this.value)"><span class="${condition}">${date}</span></button>`;	
			} else {
				dates[i] = `<button class="date" value="${viewMonth + 2}월 ${date}일" onclick="dateClick(this.value)"><span class="${condition}">${date}</span></button>`;
			}
		}
	});
	
	document.querySelector('.dates').innerHTML = dates.join('');
	
	const today = new Date();
	if (viewMonth === today.getMonth() && viewYear === today.getFullYear()) {
		for (let dates of document.querySelectorAll('.date')) {
			if (+dates.innerText === today.getDate()) {
				dates.classList.add('today');
				break;
			}
		}
	}
};

function dateClick(value) {
	document.getElementById("selectDate").textContent = value;
}

renderCalendar();


const prevMonth = () => {
	date.setMonth(date.getMonth() - 1);
	renderCalendar();
}

const nextMonth = () => {
	date.setMonth(date.getMonth() + 1);
	renderCalendar();
}

const goToday = () => {
	date = new Date();
	renderCalendar();
}