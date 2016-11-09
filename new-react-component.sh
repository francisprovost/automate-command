mkdir $1;
cat > $1/$1.jsx << EOF
/* eslint-disable */
import React from 'react';
/* eslint-enable */

class $1 extends React.Component {

    constructor(props) {
        super(props);
    }

    render() {
        return (
            <div className="$1">
                // TODO content here
            </div>
        );
    }

}

$1.propTypes = {
    value: React.PropTypes.string.isRequired
};

export default $1;

EOF

