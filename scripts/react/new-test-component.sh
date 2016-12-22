cat > $2/$2.spec.jsx << EOF
/*
eslint-disable import/no-extraneous-dependencies, import/no-unresolved, import/extensions,
prefer-arrow-callback, func-names
*/

import React from 'react';
import { shallow } from 'enzyme';
import jasmineEnzyme from 'jasmine-enzyme';

import $2 from '$1/components/$2/$2.jsx';

describe('- Component <$2 />', function () {
    let wrapper;

    beforeAll(() => {
        jasmineEnzyme();
    });

    it('is wrapped in local div class', () => {
        const header = {};
        wrapper = shallow(<$2 header={header} />);

        expect(wrapper.props().className).toEqual('$2');
    });

    // TODO #complete
});
EOF

