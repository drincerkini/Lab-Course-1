import { Button, Container, Dropdown, Menu, Image, Icon } from "semantic-ui-react";
import React from "react";
import { useStore } from "../stores/store";
import { NavLink } from "react-router-dom";
import Logo from './utilities/logo.png';


export default function NavBar() {
  const { libriStore } = useStore();

  return (

    <Menu inverted fixed="top" size="small" pointing secondary>

      <Container>
        <Menu.Item >
            <Image src={Logo} size='mini' as={NavLink} to='/'/>
        </Menu.Item>
        <Menu.Item  >E-LIBRARY</Menu.Item>
        <Menu.Item as={NavLink} to="/home" >
          HOME
        </Menu.Item>
        <Menu.Item as={NavLink} to='/about'>ABOUT</Menu.Item>
        <Menu.Item as={NavLink} to='/komente'>BLOG</Menu.Item>
        <Menu.Item as={NavLink} to='/kontakti'>CONTACT</Menu.Item>
        <Menu.Item as={NavLink} to='/ekipa' name="Ekipa">TEAM</Menu.Item>
        <Menu.Item pointing className="link item" >
        <Dropdown text="AUTORET" pointing>
          <Dropdown.Menu>
          <Dropdown.Item as={NavLink} to='/autoret' name="Autoret" >AUTORET</Dropdown.Item>
          <Dropdown.Item as={NavLink} to='/autoriBoteror' name="AutoretBoteror" >AUTORET BOTEROR</Dropdown.Item>
          </Dropdown.Menu>
        </Dropdown>
        </Menu.Item>
        <Menu.Item pointing className="link item" >
          <Dropdown text="CATEGORIES" pointing>
            <Dropdown.Menu >
              <Dropdown.Item text="LIBRA" as={NavLink} to='/librat' name="Librat" />
              <Dropdown.Item text="TEKSTE" as={NavLink} to='/tekstet' name="Tekstet" />
              <Dropdown.Item text="REVISTA" as={NavLink} to='/revistat' name="Revistat" />
              <Dropdown.Item text="PUBLIKIME" as={NavLink} to='/publikime' name="Publikime" />
              <Dropdown.Item text="LIBRA TE RINJ" as={NavLink} to='/libraTeRinj' name="LibraTeRinj" />
              <Dropdown.Item text="LIBRA BOTEROR" as={NavLink} to='/libraBoteror' name="LibraBoteror" />
              <Dropdown.Item text="LIBRA PER FEMIJE" as={NavLink} to='/libraPerFemije' name="LibraPerFemije" />

            </Dropdown.Menu>
          </Dropdown>
        </Menu.Item>

        <Menu.Item position='right'>
          <Button as='a' >
            Log in
          </Button>
          <Button as='a' style={{ marginLeft: '0.5em' }}>
            Sign Up
          </Button>
        </Menu.Item>
      </Container>
    </Menu>


  );
}
