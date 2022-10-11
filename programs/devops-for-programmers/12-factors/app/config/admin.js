module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '62e481d2030b36592333ae6ad9bbfa0d'),
  },
});
