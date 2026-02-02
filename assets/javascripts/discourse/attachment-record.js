import { withPluginApi } from "discourse/lib/plugin-api";

export default {
  name: "attachment-record",
  initialize() {
    withPluginApi("0.8", (api) => {
      api.onPageChange((url) => {
        // 页面加载时监听附件下载事件
        const attachments = document.querySelectorAll(".attachment a");
        
        attachments.forEach((attachment) => {
          attachment.addEventListener("click", (event) => {
            const postId = attachment.closest(".post").dataset.postId;
            const attachmentName = attachment.dataset.attachmentName;
            const topicTitle = document.title;
            const username = Discourse.User.current().username;
            const downloadTime = new Date().toISOString();

            // 发送下载信息到后端
            fetch("/attachment-record/download", {
              method: "POST",
              headers: {
                "Content-Type": "application/json",
              },
              body: JSON.stringify({
                post_id: postId,
                attachment_name: attachmentName,
                topic_title: topicTitle,
                username: username,
                download_time: downloadTime,
              }),
            }).catch(console.error);
          });
        });
      });
    });
  },
};
