
const readline = require("readline");

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

rl.question("Enter number of rows: ", (answer) => {
    const rows = Number(answer);

    for (let i = 0; i < rows; i++) {
        let output = "";
        
        // เว้นวรรคด้านหน้า
        for (let j = 0; j < i; j++) {
            output += "  ";
        }

        // แสดง *
        for (let j = 0; j < 2 * (rows - i) - 1; j++) {
            output += "* ";
        }

        console.log(output);
    }

    rl.close();
});
