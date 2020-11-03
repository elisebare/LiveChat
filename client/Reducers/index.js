//to combine reducers
import { combineReducers } from 'redux';
import loginReducer from './Reducers/loginReducer.js';
import chatRoomReducer from './Reducers/chatRoomReducer.js';

// combine reducers
const reducers = combineReducers({
    // if we had other reducers, they would go here
    login: loginReducer,
    chatRoom: chatRoomReducer
});

// make the combined reducers available for import
export default reducers;


