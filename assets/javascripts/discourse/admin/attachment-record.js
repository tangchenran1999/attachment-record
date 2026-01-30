import { withPluginApi } from "discourse/lib/plugin-api";

export default {
  name: "attachment-record-admin",

  initialize() {
    withPluginApi("1.2.0", (api) => {
      api.registerAdminRoute("attachmentRecord", {
        path: "/attachment-record",
        title: "附件下载记录",
      });
    });
  },
};
