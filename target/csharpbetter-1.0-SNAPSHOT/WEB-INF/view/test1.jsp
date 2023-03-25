<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <link href="<c:url value="/css/test1.css"/>" rel="stylesheet"/>
    <title>
        TEST
    </title>
</head>
<body>
<div class="card-swiper">
    <div class="card-groups">
        <div class="card-group" data-index="0" data-status="active">
            <div class="little-card card">

            </div>
            <div class="big-card card">

            </div>
            <div class="little-card card">

            </div>
            <div class="big-card card">

            </div>
            <div class="little-card card">

            </div>
            <div class="big-card card">

            </div>
            <div class="little-card card">

            </div>
            <div class="big-card card">

            </div>
        </div>
        <div class="card-group" data-index="1" data-status="unknown">
            <div class="little-card card">

            </div>
            <div class="big-card card">

            </div>
            <div class="little-card card">

            </div>
            <div class="big-card card">

            </div>
            <div class="little-card card">

            </div>
            <div class="big-card card">

            </div>
            <div class="little-card card">

            </div>
            <div class="big-card card">

            </div>
        </div>
        <div class="card-group" data-index="2" data-status="unknown">
            <div class="little-card card">

            </div>
            <div class="big-card card">

            </div>
            <div class="little-card card">

            </div>
            <div class="big-card card">

            </div>
            <div class="little-card card">

            </div>
            <div class="big-card card">

            </div>
            <div class="little-card card">

            </div>
            <div class="big-card card">

            </div>
        </div>
    </div>
    <div class="card-swiper-buttons">
        <button id="hate-button" onclick="handleHateClick()">
            <i class="fa-solid fa-x"></i>
        </button>
        <button id="love-button" onclick="handleLoveClick()">
            <i class="fa-solid fa-heart"></i>
        </button>
    </div>
</div>

<a id="source-link" class="meta-link" href="https://kippo.com/chill" target="_blank">
    <i class="fa-solid fa-link"></i>
    <span>Source</span>
</a>

<a id="yt-link" class="meta-link" href="https://youtu.be/6TYkDy54q4E" target="_blank">
    <i class="fa-brands fa-youtube"></i>
    <span>Tutorial</span>
</a>
<script>
    let activeIndex = 0;

    const groups = document.getElementsByClassName("card-group");

    const handleLoveClick = () => {
        const nextIndex = activeIndex + 1 <= groups.length - 1 ? activeIndex + 1 : 0;

        const currentGroup = document.querySelector(`[data-index="${activeIndex}"]`),
            nextGroup = document.querySelector(`[data-index="${nextIndex}"]`);

        currentGroup.dataset.status = "after";

        nextGroup.dataset.status = "becoming-active-from-before";

        setTimeout(() => {
            nextGroup.dataset.status = "active";
            activeIndex = nextIndex;
        });
    }

    const handleHateClick = () => {
        const nextIndex = activeIndex - 1 >= 0 ? activeIndex - 1 : groups.length - 1;

        const currentGroup = document.querySelector(`[data-index="${activeIndex}"]`),
            nextGroup = document.querySelector(`[data-index="${nextIndex}"]`);

        currentGroup.dataset.status = "before";

        nextGroup.dataset.status = "becoming-active-from-after";

        setTimeout(() => {
            nextGroup.dataset.status = "active";
            activeIndex = nextIndex;
        });
    }
</script>
</body>
</html>