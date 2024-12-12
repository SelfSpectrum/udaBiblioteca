import crypto from 'node:crypto';
const hashedPass = crypto.randomBytes(64).toString('hex')
console.log(hashedPass)
