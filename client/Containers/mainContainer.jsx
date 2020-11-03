// import both login and chatroom componenets
//maptostate/props
import React, { Component } from 'react'
import { connect } from 'react-redux'


const mapStateToProps = state => ({

})

const mapDispatchToProps = dispatch => ({

})

class MainContainer extends Component {
    constructor(props) {
        super(props)
    }

    //render out both components 
    render() {
        return (
            <div className='mainContainer'>

            </div>

        )
    }

}

export default connect(mapStateToProps, mapDispatchToProps)(MainContainer)