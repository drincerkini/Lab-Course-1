import { observer } from 'mobx-react-lite';
import React, { useEffect } from 'react';
import { Link, useParams } from 'react-router-dom';
import { Button, Card, Image, Item } from 'semantic-ui-react';
import LoadingComponent from '../../../app/layout/LoadingComponent';
import { useStore } from '../../../app/stores/store';

export default observer(function RevistaModelDetails() {
    const { revistaStore } = useStore();
    const { selectedRevista: revista, loadRevista, loadingInitial } = revistaStore;
    const { id } = useParams<{ id: any }>();

    useEffect(() => {
        if (id) loadRevista(id);
    }, [id, loadRevista]);

    if (loadingInitial || !revista) return <LoadingComponent />;

    return (
        <Item.Group>
            <Item>
                <Item.Image size='medium' src={`../../../../assets/libratImg/${revista.foto}`} />

                <Item.Content>
                    <Item.Header as='a'>
                        <h5>TITULLI I REVISTES: {revista.emri}</h5>

                    </Item.Header>
                    <Item.Extra><h5>AUTORI I REVISTES: {revista.autori}</h5></Item.Extra>
                    <Item.Meta>{revista.isbn}</Item.Meta>
                    <Item.Description>
                        <h5>PERSHKRIMI I REVISTES:</h5>
                        {revista.pershkrimi}
                    </Item.Description>
                    <Item.Extra><h5>SHTEPIA BOTUESE: {revista.shtepia_Botuese} </h5></Item.Extra>
                    <Item.Meta><h5>VITI I PUBLIKIMIT: {revista.viti_Publikimit} </h5></Item.Meta>
                    <Button.Group className="p-30 m-30">
                        <Button as={Link} to={`/manage5/${revista.id}`} basic color="blue" content="Edit" />
                        <Button as={Link} to='/revistat' basic color="red" content="Cancel" />
                    </Button.Group>
                </Item.Content>
            </Item>
        </Item.Group>
    )


})