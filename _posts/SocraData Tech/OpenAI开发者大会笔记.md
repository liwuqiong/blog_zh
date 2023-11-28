
[全网首发!首届OpenAI开发者大会(中文字幕)\_哔哩哔哩\_bilibili](https://www.bilibili.com/video/BV1HN411G7cb/?buvid=Z4475A4B10AD3ED64F3192CC07713C2E3E2F&from_spmid=search.search-result.0.0&is_story_h5=false&mid=nv3eR4SSGFlViRxfNniBeg%3D%3D&p=1&plat_id=114&share_from=ugc&share_medium=iphone&share_plat=ios&share_session_id=A28059B7-37D5-44DE-8E2F-00EBA306476B&share_source=COPY&share_tag=s_i&spmid=united.player-video-detail.0.0&timestamp=1699356719&unique_k=g3i4e7o&up_id=487693352&vd_source=d1bb772abb5877020a74cd9ed323692a)
#GPT #新产品 

[OpenAI史诗级更新，最强大模型炸场，128K上下文、价格暴降2/3，还能定制专属GPT-36氪](https://36kr.com/p/2507438716289024)
- GPT-4 turbo：性能更强大，价格更便宜
	- 更长的上下文：128k（原来8k）
		- 对比： Claude 能支持 100K [context](https://www.zhihu.com/search?q=context&search_source=Entity&hybrid_search_source=Entity&hybrid_search_extra=%7B%22sourceType%22%3A%22answer%22%2C%22sourceId%22%3A3280242134%7D)，Moonshot 能支持 250K context，零一万物的 Yi-34B 开源模型支持 200K context
	- 更可控：JSON Mode
	- 更好的知识：更新到2023年4月的知识库；
	- 新视觉模态：Turbo with vision；接收图像输入（GPT-4V)；
	- 定制微调
	- 更低的价格和更高的费率限制：价格降到原价的1/3; 输入token比GPT-4便宜3倍，为0.01美元，输出token则便宜2倍，为0.03 美元
- 开放新模态API：（之前一直未开放）
	- DALL·E 3；(图像输出)
	- TTS；（语音合成）
	- Whisper v3; （语音识别，原来是v2，新升级v3开源且提供API）
- GPT定制化服务：让普通人可以无代码短时间内创建自己的模型——Agent应用.
	- GPTs：自定义GPT；GPT Builder；AI助手
	- GPT（Agent）应用商店；付费激励（暂未公布分成比例）；拿出收入（今年营收可达13亿美元）的一部分，培育一个围绕ChatGPT的新生态；
	- Assistants API：持久的、无限长的 thread，代码解释器，搜索，函数调用等核心能力。 https://platform.openai.com/docs/assistants/overview

> [!question] 为什么OpenAI要自己下场做服务？
> 原因：大模型方向本质上没什么非常显著的门槛和壁垒，只要有足够的资源，不论是谷歌，还是别的制作大模型的公司，都能够相互竞争。（Sam Altman自己说的）
> 
> 此外，之前Google发布了一篇文章说LLM领域没有护城河，因为在论文和开源数据的加持下，开源模型很快就可以赶上商用模型。
> 
> 所以，唯一的差异化优势和门槛，在于==“卡住生态位”==，这是OpenAI给自己谋的出路，以达到真正不可替代的位置。

```ad-question 
如何看待？

未尝不是一件好事。将那些拿API套壳的没有技术含量的创业公司产品清出市场，让用户也不用在一众过剩的相似的产品中间晕头转向。

但是要听其言，观其行。希望OpenAI不要成为一家独大的垄断极权者。

```

几组基本数据
#商业数据 
- 2百万开人员
- 92%的500强企业在用
- 周活跃用户数1亿

发展路线
#竞争战略 
- 2023年：更便宜更快的GPT-4，更长的上下文——今年在稳步推进。
- 2024年：多模态

[OpenAI史诗级更新：人人都可定制GPT，GPT商店上线，模型价格打骨折 | 焦点分析-36氪](https://36kr.com/p/2507488255770624)


[作为 AI 从业者，你看完 OpenAI DevDay 有什么感想？ - 知乎](https://www.zhihu.com/question/629335179/answer/3280242134)
#认知观点 #行业研究 
- 但 GPT-4 相比 [GPT-3.5-Turbo](https://www.zhihu.com/search?q=GPT-3.5-Turbo&search_source=Entity&hybrid_search_source=Entity&hybrid_search_extra=%7B%22sourceType%22%3A%22answer%22%2C%22sourceId%22%3A3280242134%7D) 和 LLaMA 的成本仍然高出一个数量级，大规模商用有一定挑战。
- 但是，Agent 最核心的 memory（记忆）、[autonomous](https://www.zhihu.com/search?q=autonomous&search_source=Entity&hybrid_search_source=Entity&hybrid_search_extra=%7B%22sourceType%22%3A%22answer%22%2C%22sourceId%22%3A3280242134%7D)（自主意识）、task planning（任务规划）、[persona](https://www.zhihu.com/search?q=persona&search_source=Entity&hybrid_search_source=Entity&hybrid_search_extra=%7B%22sourceType%22%3A%22answer%22%2C%22sourceId%22%3A3280242134%7D)（性格）、emotions（情感）等问题，这次 OpenAI 发布会并没有给出解决方案。**如果说今天 OpenAI 发布会之后，一个 Agent 公司的核心竞争力没了，那应该首先反思一下是不是技术护城河太浅了**。
- 如何理解长上下文和价格的关系
	- 长上下文不是万金油，有些做 Agent 的人惊呼，有了长上下文，就不再需要 vector database 和 RAG 了，Agent 的记忆问题也被完全解决了，这是完全不考虑成本的说法。
	- **上下文输入每个 token 都是要钱的**，$0.01 / 1K [tokens](https://www.zhihu.com/search?q=tokens&search_source=Entity&hybrid_search_source=Entity&hybrid_search_extra=%7B%22sourceType%22%3A%22answer%22%2C%22sourceId%22%3A3280242134%7D)，那如果把 128K token 的 context 打满，一个请求可就是 $1.28，将近 10 块钱人民币了。大多数人，尤其是 to C 产品，恐怕都付不起这个钱。
- 关于多模态图片生成的价格成本
	- GPT-4V 的价格并不高，输入一个 1024x1024 的图片，只要 765 个 token，也就是 $0.00765。
	- DaLLE-3 图片生成的价格就比较高了，一张 1024x1024 的图片要$0.04，跟 Midjourney 的价格差不多。如果自己 host Stable Diffusion SDXL 模型的话，生成一张图的成本可以控制在 $0.01 以下。（DaLLE-3 的图片生成质量比 Stable Diffusion SDXL 高很多。例如 SDXL 难以解决的画手指问题、生成带指定字的 logo 问题、复杂的物体位置关系问题，DaLLE-3 就能做得比较好。）
- 关于知识更新：==数据清洗的质量很重要；旧知识的遗忘问题==（如何向现有模型中添加大量的新知识，又尽量减少重新训练的开销，是一个非常值得研究的问题）。
- 新老模型成本对比![[Pasted image 20231108223845.png]]
- 关于性能提升与成本：rate limit 提升了，每分钟可以用 300K token，小规模服务应该是够用了。如果用满 300K token，每分钟就会烧掉 3 美金，先看看账上的钱够不够烧吧。

关于创业机会：如何应对我做的东西，大模型自己可能顺手就做了？
	- 之前，把业务流程编排好，是大多数应用的核心价值。
	- 现在，复杂的编排操作，可能很快被下一代发布的API囊括。
- OpenAI不做的东西：
	- 陪伴类Agent；
	- 开源模型、低成本模型；
	- 游戏
- OpenAI暂时做不出来的东西（时间差）
	- 视频输入和视频生成
	- 依托硬件
	- 有数据壁垒的场景
- 此外，基础设施和数据语料（尤其是高质量的数据）将成为关键
	- 基础设施（高端芯片、算力）在未来几年将成为大模型胜负的关键（因为涉及到训练和推理的成本）。
	- 高质量数据将成为稀缺资源，不远将来将被这些大模型吃完耗尽。
