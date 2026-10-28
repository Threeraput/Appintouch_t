function Calculate(x) {
  const initialWater = 5832;
  // น้ำเหลือแต่ละวันคิดเป็น 2/3 ของวันก่อนหน้า
  // เมื่อผ่านไป x วัน จะเหลือน้ำเท่ากับ initialWater * (2/3)^x
  const result = initialWater * Math.pow(2 / 3, x);
  return result;
}

const x = 10;
const result = Calculate(x);
console.log(`เมื่อครบ ${x} วัน จะเหลือน้ำ ${result} ลิตร`);
