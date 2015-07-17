data = fred.latest({'CPIAUCSL', 'PCEPI'}, 'units', {'pca', 'pca'});
plot(data.date, data.value, 'LineWidth', 1.5);
set(gca(), 'FontSize', 16);
datetick('x', 'yyyy')
legend(data.series{:})
print(gcf(), '-dpdf', 'Ex1.pdf');

