import { observer } from "mobx-react-lite";
import { SyntheticEvent, useState } from "react";
import { Link } from "react-router-dom";
import { Button, Card, Grid, Icon, Item, Segment } from "semantic-ui-react";
import { useStore } from "../../../app/stores/store";

export default observer(function RevistaList(){
    const {revistaStore} = useStore();
    const {deleteRevista, revistatByViti} = revistaStore;
    const [target, setTarget] = useState('');

    function handleDeleteRevista(e: SyntheticEvent<HTMLButtonElement>, id: number){
        setTarget(e.currentTarget.value);
        deleteRevista(id);
    }

    return (
        <Grid columns={4}>
      {revistatByViti.map(revista => (
            <Grid.Column key={revista.id}>
              <Card 
              image={`../../../../assets/libratImg/${revista.foto}`}
              header={revista.emri}
              meta={revista.autori}
              description={revista.zhanri}
              extra={
                <>
                <Button animated='fade' value={revista.id}  onClick={(e)=> handleDeleteRevista(e, revista.id)} floated='right' basic color="red">
                    <Button.Content visible><Icon className="trash" /></Button.Content>
                    <Button.Content hidden>DELETE</Button.Content>
                  </Button>
                  <Button animated as={Link} to={`/revistat/${revista.id}`} floated='right'  basic color='grey' >
                  <Button.Content hidden>VIEW</Button.Content>
                  <Button.Content visible>
                    <Icon name='arrow right' />
                  </Button.Content>
                </Button>
                
                </>
              }
              />
          </Grid.Column>
        ))}
      </Grid>
    )

})