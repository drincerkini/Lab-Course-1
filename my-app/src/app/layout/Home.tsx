import React from 'react';
import { Link } from 'react-router-dom';
import { Button, Container, Header, Icon, Image } from 'semantic-ui-react';
import Banner from './utilities/imgs/banner.png';

export default function Home() {
    return (
        <Container text>
            <Header
                as='h1'
                content='The Largest Library On Internet'
                inverted
                style={{
                    fontSize: '4em',
                    fontWeight: 'normal',
                    marginBottom: 0,
                    marginTop: '3em',
                    color: 'black'
                }}
            />
            <Header
                as='h2'
                content='Read whatever you want when you want to.'
                inverted
                style={{
                    fontSize: '1.7em',
                    fontWeight: 'normal',
                    marginTop: '1.5em',
                    color: 'black'
                }}
            />
            <Button primary size='huge' as={Link} to='/librat'>
                Go To Books
                <Icon className='right arrow' />
            </Button>

                <Image src={Banner} />

        </Container>
    )
}