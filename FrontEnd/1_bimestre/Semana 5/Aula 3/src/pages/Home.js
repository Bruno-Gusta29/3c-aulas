import React, {useState} from 'react';
import Saudacao from '../components/Saudacao';
import './Home.css'

function Home(){
    const [nome,setNome] = useState("ornella")
    return (
        <div>
            <h1 className='titulo'>Página Home!</h1>
            <div className='nome'>
            <div className='nome_1'>
            <Saudacao nome ="João" idade ="18" />
            </div>
            <div className='nome_2'>
            <Saudacao nome ="Maria" idade = "17"/>
            </div>
            <div className='nome_3'>
            <Saudacao nome ="Ana" idade = "16"/>
            </div>
            </div>
        </div>
    );
}

export default Home;