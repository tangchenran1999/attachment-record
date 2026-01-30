import { withPluginApi } from "discourse/lib/plugin-api";

export default {
  name: "attachment-record",

  initialize() {
    withPluginApi("0.8.7", (api) => {
      api.decorateCookedElement((elem, helper) => {
        elem.querySelectorAll("a.attachment").forEach((link) => {
          link.addEventListener("click", () => {
            fetch("/attachment-record", {
              method: "POST",
              headers: {
                "Content-Type": "application/json",
              },
              body: JSON.stringify({
                communityName: "default", // 可以动态获取实际值
                topicName: helper.getModel()?.topic?.title, // 从当前话题获取
                userName: api.getCurrentUser()?.username, // 从当前用户获取
                attachmentName: link.innerText, // 获取附件名称
              }),
            });
          });
        });
      });
    });
  },
};
