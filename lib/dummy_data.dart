// import 'package:flutter/material.dart';

import './models/town_life_post.dart';
import './models/home_item.dart';
import 'models/chat_item.dart';

const DUMMY_HOMEITEMS = const [
  HomeItem(
    imagePath: 'images/homeitem1.jpg',
    title: '맥북에어 스그 기본형',
    location: '성수2동',
    time: '1분 전',
    price: '1,060,000원',
    likes: 2,
  ),
  HomeItem(
    imagePath: 'images/homeitem2.jpg',
    title: '맥북에어 m1 스페이스 그레이',
    location: '성수3동',
    time: '끌올 1분 전',
    price: '900,000원',
    likes: 10,
  ),
];

const DUMMY_TOWNLIFE_POSTS = const [
  TownLifePost(
    tag: '살림',
    content: '전등 불이 이렇게 들어와서 교체하려고 하는데 어떻게 해야 되나요??',
    user: '이곳저곳',
    location: '송정동',
    time: '16분 전',
    likes: 0,
    comment: 0,
  ),
  TownLifePost(
    tag: '취미생활',
    content: '오전 9시에 같이 런닝하실분?오전 9시에 같이 런닝하실분?오전 9시에 같이 런닝하실분?',
    user: '조던',
    location: '성수동3가',
    time: '1시간 전',
    likes: 2,
    comment: 1,
  ),
  TownLifePost(
    tag: '강아지',
    content: '서울숲에 강아지 산책하기 좋아요.서울숲에 강아지 산책하기 좋아요.서울숲에 강아지 산책하기 좋아요.',
    user: '꼬미네',
    location: '성수동1가',
    time: '4시간 전',
    likes: 0,
    comment: 0,
  ),
  TownLifePost(
    tag: '일상',
    content: '저 드로잉 동아리 하는데 힐링이 되서 \n추천할테니까 같이 하실 분~',
    user: '코리안조커',
    location: '용답동',
    time: '5시간 전',
    likes: 5,
    comment: 1,
  ),
];

const DUMMY_CHAT = const [
  ChatItem(
    profileImagePath: 'images/profile1.jpg',
    name: '바다',
    location: '성수동2가',
    time: '1일 전',
    itemImagePath: 'images/homeitem1.jpg',
    messageLatest: '네',
  ),
  ChatItem(
      profileImagePath: 'images/profile2.JPG',
      name: '새우깡',
      location: '용답동',
      time: '3일 전',
      itemImagePath: 'images/homeitem2.jpg',
      messageLatest: '도착했습니다'),
  ChatItem(
    profileImagePath: 'images/profile1.jpg',
    name: '꼬미네',
    location: '성수동3가',
    time: '5일 전',
    itemImagePath: 'images/homeitem2.jpg',
    messageLatest: '감사드려요~',
  ),
  ChatItem(
    profileImagePath: 'images/profile2.JPG',
    name: '코리안조커',
    location: '송정동',
    time: '1주 전',
    itemImagePath: 'images/homeitem1.jpg',
    messageLatest: '코리안조커님이 이모티콘을 보냈어요.',
  ),
  ChatItem(
    profileImagePath: 'images/profile1.jpg',
    name: '바다',
    location: '성수동2가',
    time: '1일 전',
    itemImagePath: 'images/homeitem1.jpg',
    messageLatest: '네네',
  ),
  ChatItem(
    profileImagePath: 'images/profile2.JPG',
    name: '새우깡',
    location: '용답동',
    time: '3일 전',
    itemImagePath: 'images/homeitem2.jpg',
    messageLatest: '도착했습니다',
  ),
  ChatItem(
    profileImagePath: 'images/profile1.jpg',
    name: '꼬미네',
    location: '성수동3가',
    time: '5일 전',
    itemImagePath: 'images/homeitem2.jpg',
    messageLatest: '감사드려요~',
  ),
  ChatItem(
    profileImagePath: 'images/profile2.JPG',
    name: '코리안조커',
    location: '송정동',
    time: '1주 전',
    itemImagePath: 'images/homeitem1.jpg',
    messageLatest: '코리안조커님이 이모티콘을 보냈어요.',
  ),
  ChatItem(
    profileImagePath: 'images/profile1.jpg',
    name: '바다',
    location: '성수동2가',
    time: '1일 전',
    itemImagePath: 'images/homeitem1.jpg',
    messageLatest: '네네',
  ),
  ChatItem(
    profileImagePath: 'images/profile2.JPG',
    name: '새우깡',
    location: '용답동',
    time: '3일 전',
    itemImagePath: 'images/homeitem2.jpg',
    messageLatest: '도착했습니다',
  ),
  ChatItem(
    profileImagePath: 'images/profile1.jpg',
    name: '꼬미네',
    location: '성수동3가',
    time: '5일 전',
    itemImagePath: 'images/homeitem2.jpg',
    messageLatest: '감사드려요~',
  ),
];
