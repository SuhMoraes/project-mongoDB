import { BrowserRouter, Switch, Route } from 'react-router-dom';

import ContactUs from './pages/ContactUs';

const Routes = () => {
  return (
    <BrowserRouter>
      <Switch>
        <Route path='/' component={ContactUs} />
      </Switch>
    </BrowserRouter>
  );
};

export default Routes;
